class UsersProgramsController < ApplicationController
  def create
    up = UsersProgram.new(status: "in progress")
    up.user = current_user
    program = Program.find(params[:program_id])
    up.program = program
    lesson1 = program.lessons.first
    up.last_lesson_id = lesson1.id if lesson1.present?
    step = program.lessons.first.steps.first
    up.last_step_id = step.id if step.present?
    if up.save
      redirect_to program_path(program)
    end
  end

  def update
    program = Program.find(params[:program_id])
    up = UsersProgram.where(user: current_user, program: program).first
    last_lesson = Lesson.find(up.last_lesson_id)
    last_step = Step.find(up.last_step_id)
    step = Step.find(params[:step])
    lesson = step.lesson
    if lesson.number >= last_lesson.number && step.number > last_step.number
      up.update(last_step_id: step.id, last_lesson_id: lesson.id)
      up.update_completion
      current_user.add_xp(10)
      current_user.save
      redirect_to step_path(step) if up.save
    else
      redirect_to step_path(step)
    end
  end
end

class Lesson < ApplicationRecord
  belongs_to :program
  has_many :steps, dependent: :destroy
  has_one :quiz, dependent: :destroy

  def get_step(user)
    program = self.program
    up = UsersProgram.where(program: program, user: user).first
    last_lesson = Lesson.find(up.last_lesson_id)

    if up.status == "done"
      @step = self.steps.first
    elsif up.status == "in progress" && last_lesson.number > self.number
      @step = self.steps.first
    elsif up.status == "in progress" && last_lesson.number == self.number
      @step = Step.find(up.last_step_id)
    else
      @step = nil
    end
    return @step
  end

  def get_status(user)
    program = self.program
    up = UsersProgram.where(program: program, user: user).first
    last_lesson = Lesson.find(up.last_lesson_id)
    if up.status == "done" || self.number < last_lesson.number
      lesson_status = "done"
    elsif self.number == last_lesson.number
      lesson_status = "in progress"
    else
      lesson_status = "locked"
    end
    return lesson_status
  end
end

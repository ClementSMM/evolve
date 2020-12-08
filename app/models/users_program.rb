class UsersProgram < ApplicationRecord
  belongs_to :user
  belongs_to :program

  def update_completion
    program = self.program
    nb_lesson = program.lessons.count
    return false if nb_lesson.nil?
    last_lesson = Lesson.find(self.last_lesson_id)
    self.completion = (last_lesson.number - 1) / nb_lesson.to_f * 100
  end
end

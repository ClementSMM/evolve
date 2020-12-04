class Lesson < ApplicationRecord
  belongs_to :program
  has_many :steps, dependent: :destroy
  has_one :quiz, dependent: :destroy

  def get_step(user)
    program = self.program
    up = UsersProgram.where(program: program, user: user).first

    if up.status == "done"
      @step = lesson.steps.first
    else
      @step = Step.find(up.last_step_id)
    end
    return @step
  end
end

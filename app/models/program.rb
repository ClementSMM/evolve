class Program < ApplicationRecord
  has_many :lessons, dependent: :destroy
  has_one :final_test, dependent: :destroy
  has_many :reviews, dependent: :destroy
  has_many :users_programs, dependent: :destroy
  has_many :users, through: :users_programs
  has_many :steps, through: :lessons

  def number_lessons_done(user)
    up = UsersProgram.where(program: self, user: user).first
    return 0 unless up.last_lesson_id.present?

    last_lesson = Lesson.find(up.last_lesson_id)
    return last_lesson.number - 1
  end

  def completion(user)
    up = UsersProgram.where(program: self, user: user).first
    return up.completion
  end
end

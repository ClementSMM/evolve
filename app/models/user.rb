class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
  has_many :users_programs, dependent: :destroy
  has_many :reviews, dependent: :destroy
  has_one_attached :photo
  has_many :final_test_answers, dependent: :destroy
  has_many :quizz_scores, dependent: :destroy

  def add_xp(number)
    xp += number
    if xp >= 1000
      xp -= 1000
      level += 1
    end
  end
end

class Quiz < ApplicationRecord
  belongs_to :lesson
  has_many :questions, dependent: :destroy
  has_many :quizz_scores, dependent: :destroy
end

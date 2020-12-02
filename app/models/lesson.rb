class Lesson < ApplicationRecord
  belongs_to :program
  has_many :steps, dependent: :destroy
  has_one :quiz, dependent: :destroy
end

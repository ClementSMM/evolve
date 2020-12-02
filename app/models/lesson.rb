class Lesson < ApplicationRecord
  belongs_to :program
  has_many :steps
  has_one :quiz
end

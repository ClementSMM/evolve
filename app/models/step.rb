class Step < ApplicationRecord
  belongs_to :lesson
  has_one :quiz
end

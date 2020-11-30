class Quiz < ApplicationRecord
  belongs_to :step
  has_many :questions
end

class Review < ApplicationRecord
  belongs_to :program
  belongs_to :user
  validates :content, presence: true
  validates :rating, inclusion: { in: [1, 2, 3, 4, 5], message: "must be between 1 and 5" }
  validates :rating, presence: true
end

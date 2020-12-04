class Program < ApplicationRecord
  has_many :lessons, dependent: :destroy
  has_one :final_test, dependent: :destroy
  has_many :reviews, dependent: :destroy
  has_many :users_programs, dependent: :destroy
  has_many :users, through: :users_programs
  has_many :steps, through: :lessons
end

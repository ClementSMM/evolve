class Program < ApplicationRecord
  has_many :lesson, dependent: :destroy
  has_one :final_test, dependent: :destroy
  has_many :reviews, dependent: :destroy
  has_many :users_programs, dependent: :destroy
  has_many :users, through: :users_programs
end

class Program < ApplicationRecord
  has_many :lesson
  has_one :final_test
  has_many :reviews
  has_many :users_programs
end

class FinalTest < ApplicationRecord
  belongs_to :program
  has_many :final_test_answers, dependent: :destroy
end

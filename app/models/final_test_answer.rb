class FinalTestAnswer < ApplicationRecord
  belongs_to :user
  belongs_to :final_test
  has_one_attached :file
end

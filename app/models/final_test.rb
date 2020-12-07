class FinalTest < ApplicationRecord
  belongs_to :program
  has_one_attached :photo
end

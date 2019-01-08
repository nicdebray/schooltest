class Batch < ApplicationRecord
  has_many :students
  has_many :courses

  belongs_to :user
end

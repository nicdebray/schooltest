class Batch < ApplicationRecord
  validates :name, presence: true

  has_many :students
  has_many :courses

  belongs_to :user
end

class Copy < ApplicationRecord
  validates :assignment, presence: true

  belongs_to :user
  belongs_to :assignment
  belongs_to :student
end

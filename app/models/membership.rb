class Membership < ApplicationRecord
  belongs_to :course
  belongs_to :student
  belongs_to :user

  validates :course, uniqueness: {scope: :student}
end

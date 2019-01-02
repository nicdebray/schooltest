class Membership < ApplicationRecord
  belongs_to :course, optional: true
  belongs_to :student, optional: true

  # validates :student, uniqueness: {scope: :course}
end

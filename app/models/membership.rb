class Membership < ApplicationRecord
  belongs_to :course
  belongs_to :student
end

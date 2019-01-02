class Student < ApplicationRecord
  belongs_to :batch, optional: true
  has_many :memberships
  has_many :courses, through: :memberships
  has_many :evaluations

end

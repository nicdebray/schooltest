class Course < ApplicationRecord
  belongs_to :teacher, optional: true
  belongs_to :batch, optional: true
  has_many :memberships
  has_many :students, through: :memberships
  has_many :evaluations
end

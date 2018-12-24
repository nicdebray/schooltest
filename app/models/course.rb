class Course < ApplicationRecord
  belongs_to :teacher
  belongs_to :batch
  has_many :memberships
  has_many :students, through: :memberships
  has_many :evaluations
end

class Course < ApplicationRecord
  validates :name, presence: true

  belongs_to :teacher, optional: true
  belongs_to :batch, optional: true
  belongs_to :user
  has_many :memberships
  has_many :students, through: :memberships
  has_many :evaluations
end

class Student < ApplicationRecord
  validates :first_name, presence: true
  validates :last_name, presence: true

  belongs_to :batch, optional: true
  has_many :memberships
  has_many :courses, through: :memberships
  has_many :evaluations, dependent: :destroy

  # accepts_nested_attributes_for :memberships
end

class Student < ApplicationRecord
  belongs_to :batch
  has_many :memberships
  has_many :courses, through: :memberships

end

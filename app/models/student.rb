class Student < ApplicationRecord
  validates :first_name, :last_name, presence: true


  belongs_to :batch, optional: true
  belongs_to :user
  has_many :memberships
  has_many :courses, through: :memberships
  has_many :evaluations, dependent: :destroy
  has_many :copies

  mount_uploader :photo, PhotoUploader
end

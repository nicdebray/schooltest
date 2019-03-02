class Teacher < ApplicationRecord
  has_many :courses
  belongs_to :user

  mount_uploader :photo, PhotoUploader

  validates :first_name, :last_name, presence: true
end

class Teacher < ApplicationRecord
  has_many :courses
  belongs_to :user

  mount_uploader :photo, PhotoUploader
end

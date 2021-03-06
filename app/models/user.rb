class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
  has_many :batches
  has_many :courses
  has_many :teachers
  has_many :students
  has_many :memberships
  has_many :assignments
  has_many :copies

  mount_uploader :photo, PhotoUploader
end

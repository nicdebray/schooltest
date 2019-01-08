class Assignment < ApplicationRecord
  validates :title, presence: true

  belongs_to :course
  belongs_to :user
end

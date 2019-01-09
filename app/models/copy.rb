class Copy < ApplicationRecord
  belongs_to :user
  belongs_to :assignment
  belongs_to :student
end

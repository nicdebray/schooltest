class Course < ApplicationRecord
  belongs_to :teacher
  belongs_to :batch
end

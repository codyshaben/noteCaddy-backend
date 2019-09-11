class PlayerCourse < ApplicationRecord
  belongs_to :player
  belongs_to :course
end

class HoleNote < ApplicationRecord
  belongs_to :hole_id
  belongs_to :note_id
end

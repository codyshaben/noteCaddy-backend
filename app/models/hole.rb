class Hole < ApplicationRecord
    belongs_to :course
    has_many :notes, through: :hole_notes
end

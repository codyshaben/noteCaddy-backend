class Player < ApplicationRecord
    has_many :player_courses
    has_many :courses, through: :player_courses
end

class Course < ApplicationRecord
    has_many :player_courses
    has_many :players, through: :player_courses
    has_many :holes
end

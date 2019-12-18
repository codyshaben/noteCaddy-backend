class Player < ApplicationRecord
    has_secure_password
    # validates :name, presence: true, uniqueness: true
    # validates :password, presence: true
    # has_many :player_courses
    # has_many :courses, through: :player_courses

    
end

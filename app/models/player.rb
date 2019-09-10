class Player < ApplicationRecord
    has_many :courses
    has_many :holes, through: :courses
end

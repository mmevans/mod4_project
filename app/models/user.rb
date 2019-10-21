class User < ApplicationRecord
    has_many :grades
    has_many :assignments, through: :grades
    belongs_to :school
    has_many :courses
    has_secure_password
end
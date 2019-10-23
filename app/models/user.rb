class User < ApplicationRecord
    has_many :grades
    has_many :assignments, through: :grades
    has_many :courses
    belongs_to :school
    
    validates_presence_of :email
    validates_uniqueness_of :email, case_sensitive: false
    validates_format_of :email, with: /@/

    has_secure_password
end
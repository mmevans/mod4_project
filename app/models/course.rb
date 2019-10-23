class Course < ApplicationRecord
    belongs_to :user
    has_many :assignments
    mount_uploader :icon, IconUploader
    serialize :icon, JSON
end
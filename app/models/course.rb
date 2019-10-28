class Course < ApplicationRecord
    belongs_to :user
    has_many :assignments
    has_many :documents
    has_many :announcements
    mount_uploader :icon, IconUploader
    serialize :icon, JSON
end
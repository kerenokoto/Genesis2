class Event < ActiveRecord::Base
	mount_uploader :picture, PictureUploader
	
	validates :title, presence: true
	validates :venue, presence: true
	validates :description, presence: true
	has_many :votes, dependent: :destroy
end

class Photo < ActiveRecord::Base
	belongs_to :shop

	validates :shop, presence: true
    mount_uploader :image, PhotoUploader
end

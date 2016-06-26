class Shop < ActiveRecord::Base
	validates :name, presence: true
    validates :address, presence: true
    validates :description, presence: true
    validates :latitude, presence: true
    validates :longitude, presence: true

    geocoded_by :address, latitude: :lat, longitude: :lon
    after_validation :geocode

    mount_uploader :image, ImageUploader
end

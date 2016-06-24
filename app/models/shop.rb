class Shop < ActiveRecord::Base
	has_many  :photos, inverse_of: :shop, dependent: :destroy
	# enable nested attributes for photos through shop class
	accepts_nested_attributes_for :photos, allow_destroy: true

	validates :name, presence: true
    validates :address, presence: true
    validates :description, presence: true
end

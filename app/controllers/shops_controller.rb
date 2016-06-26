class ShopsController < ApplicationController
	def new
		@shop = Shop.new
	end

	def create
	 	@shop = Shop.create(shop_params)
	 	if @shop.save
	 		redirect_to shops_url, flash: {sucess: "New shop added successfully!"}
	 	else
	 		render 'new'
	 	end
	end

	def index
		@shops = Shop.all
	end

	def locations
		@shop = Shop.last
	end

	private

	def shop_params
		params.require(:shop).permit(:name, :address, :description, :image, :latitude, :longitude)
	end
end

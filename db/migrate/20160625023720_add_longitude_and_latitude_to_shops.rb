class AddLongitudeAndLatitudeToShops < ActiveRecord::Migration
  def change
    add_column :shops, :longitude, :float
    add_column :shops, :latitude, :float
  end
end

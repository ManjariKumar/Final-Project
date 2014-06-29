class AddLatLongToInstitution < ActiveRecord::Migration
  def change
    add_column :institutions, :latitude, :float
    add_column :institutions, :longitude, :float
  end
end

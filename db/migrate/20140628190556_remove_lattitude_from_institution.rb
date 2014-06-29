class RemoveLattitudeFromInstitution < ActiveRecord::Migration
  def change
    remove_column :institutions, :lattitude, :float
  end
end

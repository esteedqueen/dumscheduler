class RemoveLongLatFromLocations < ActiveRecord::Migration
  def self.up
    remove_column :locations, :longitude
    remove_column :locations, :latitude
  end

  def self.down
    add_column :locations, :longitude
    add_column :locations, :latitude
  end
end

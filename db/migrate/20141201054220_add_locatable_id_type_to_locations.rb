class AddLocatableIdTypeToLocations < ActiveRecord::Migration
  def self.up
    add_column :locations, :locatable_id, :integer
    add_column :locations, :locatable_type, :string
  end

  def self.down
    remove_column :locations, :locatable_id, :integer
    remove_column :locations, :locatable_type, :string
  end
end
class AddLocationToSchedules < ActiveRecord::Migration
  def self.up
    add_column :schedules, :location, :string
  end

  def self.down
    remove_column :schedules, :location, :string
  end
end

class RemoveLocationFromSchedule < ActiveRecord::Migration
  def self.up
    remove_column :schedules, :location
  end

  def self.down
    add_column :schedules, :location
  end


end

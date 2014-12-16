class RemoveUserIdFromScheduleAndLocationIdFromLocations < ActiveRecord::Migration
  def self.up
    remove_reference :schedules, :user
    remove_column :locations, :locatable_id
    remove_column :locations, :locatable_type
  end

  def self.down
    add_reference :schedules, :user
    add_column :locations, :locatable_id
    add_column :locations, :locatable_type
  end
end

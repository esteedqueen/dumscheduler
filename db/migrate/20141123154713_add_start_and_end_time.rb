class AddStartAndEndTime < ActiveRecord::Migration
  def self.up
    rename_column :schedules, :starts_at, :start_time
    add_column :schedules, :end_time, :datetime
  end

  def self.down
    rename_column :schedules, :start_time, :starts_at
    remove_column :schedules, :end_time

  end
end

class AddIndexToSchedules < ActiveRecord::Migration
  def change
    add_index :schedules, :location_id
  end
end

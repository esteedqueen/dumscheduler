class AddUserIdToSchedules < ActiveRecord::Migration
  def change
    add_reference :schedules, :user, index: true
  end
end

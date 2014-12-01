class CreateFeedbacks < ActiveRecord::Migration
  def change
    create_table :feedbacks do |t|
      t.string :user_status
      t.references :schedule, index: true

      t.timestamps null: false
    end
  end
end

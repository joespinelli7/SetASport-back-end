class CreateUserCourts < ActiveRecord::Migration[5.2]
  def change
    create_table :user_courts do |t|
      t.integer :user_id
      t.integer :court_id
      t.string :time

      t.timestamps
    end
  end
end

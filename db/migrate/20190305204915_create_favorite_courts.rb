class CreateFavoriteCourts < ActiveRecord::Migration[5.2]
  def change
    create_table :favorite_courts do |t|
      t.integer :user_id
      t.integer :court_id

      t.timestamps
    end
  end
end

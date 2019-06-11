class CreateTrips < ActiveRecord::Migration[5.2]
  def change
    create_table :user_trails do |t|
      t.integer :user_id
      t.integer :trail_id
      t.string :name
      t.integer :year
      t.integer :month
      t.integer :day
      t.string :notes
      t.timestamps null: false
  end
end

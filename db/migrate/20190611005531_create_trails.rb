class CreateTrails < ActiveRecord::Migration[5.2]
  def change
    create_table :trails do |t|
      t.string :name
      t.string :length
      t.string :difficulty
      t.integer :mountain_id
      t.timestamps null: false
    end
  end
end

class CreateUserMountains < ActiveRecord::Migration[5.2]
  def change
    create_table :user_mountains do |t|
      t.integer :user_id
      t.integer :mountain_id
      t.timestamps null: false
    end
  end
end

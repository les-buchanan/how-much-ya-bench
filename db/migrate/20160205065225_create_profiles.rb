class CreateProfiles < ActiveRecord::Migration
  def change
    create_table :profiles do |t|
      t.integer :weight
      t.integer :height
      t.integer :age
      t.string :gender
      t.string :location
      t.integer :user_id

      t.timestamps null: false
    end
  end
end

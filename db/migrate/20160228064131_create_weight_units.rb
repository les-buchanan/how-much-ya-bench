class CreateWeightUnits < ActiveRecord::Migration
  def change
    create_table :weight_units do |t|
      t.string :name

      t.timestamps null: false
    end
  end
end

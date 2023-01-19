class CreateCars < ActiveRecord::Migration[7.0]
  def change
    create_table :cars do |t|
      t.string :name, null: false
      t.string :model, null: false
      t.boolean :is_rent, null: false, default: false

      t.timestamps
    end
  end
end

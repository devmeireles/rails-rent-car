class CreateCars < ActiveRecord::Migration[8.0]
  def change
    create_table :cars do |t|
      t.string :model
      t.string :make
      t.integer :year
      t.string :size
      t.integer :price

      t.timestamps
    end
  end
end

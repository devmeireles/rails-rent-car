class AddInventoryCountToCars < ActiveRecord::Migration[8.0]
  def change
    add_column :cars, :inventory_count, :integer
  end
end

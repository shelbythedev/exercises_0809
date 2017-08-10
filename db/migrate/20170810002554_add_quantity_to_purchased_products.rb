class AddQuantityToPurchasedProducts < ActiveRecord::Migration[5.1]
  def change
    add_column :purchased_products, :quantity, :integer
  end
end

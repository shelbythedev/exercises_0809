class CreatePurchaseProductsJoinTable < ActiveRecord::Migration[5.1]
  def change
    create_join_table :purchases, :products, table_name: :purchased_products
  end
end

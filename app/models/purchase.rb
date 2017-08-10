class Purchase < ApplicationRecord
  belongs_to :user
  has_many :purchased_products
  has_and_belongs_to_many :products, join_table: :purchased_products

  def purchase_products(products)
    products.each do |product|
      @purchased_product = PurchasedProduct.create(
        product_id: product['id'],
        purchase_id: id,
        quantity: product['quantity']
      )

      @purchased_product.update_stock
    end
  end
end

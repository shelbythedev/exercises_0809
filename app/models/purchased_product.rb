class PurchasedProduct < ApplicationRecord
  belongs_to :purchase
  belongs_to :product

  def update_stock
    product.stock = product.stock - quantity
    product.save
  end
end

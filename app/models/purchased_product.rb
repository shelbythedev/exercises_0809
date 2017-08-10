class PurchasedProduct < ApplicationRecord
  belongs_to :purchase
  belongs_to :product

  def update_stock
    self.product.stock = self.product.stock - self.quantity
    self.product.save
  end
end

class PurchasedProductsController < ApplicationController
  before_action :authenticate_user!

  private

  def purchased_product_params
    params.require(:purchased_product).permit(:purchase_id, :product_id, :quantity)
  end
end

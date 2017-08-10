class PurchasesController < ApplicationController
  before_action :authenticate_user!

  def create
    if current_user.authorized
      @purchase = current_user.purchases.create(purchase_params)

      params[:products].each do |product|
        @purchased_product = PurchasedProduct.create({
          product_id: product['id'],
          purchase_id: @purchase.id,
          quantity: product['quantity']
                                                     })

        @purchased_product.update_stock
      end

      response = @purchase
    else
      status = 403
    end

    respond_to do |format|
      format.json { render json: response, status: status }
    end
  end

  private

  def purchase_params
    params.permit(:user_id, :products)
  end
end

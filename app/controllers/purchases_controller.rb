class PurchasesController < ApplicationController
  before_action :authenticate_user!

  def create
    if current_user.authorized
      @purchase = current_user.purchases.create(purchase_params)
      @purchase.purchase_products(params[:products])
    else
      status = 403
    end

    respond_to do |format|
      format.json { render json: @purchase, status: status }
    end
  end

  private

  def purchase_params
    params.permit(
      :user_id,
      :products
    )
  end
end

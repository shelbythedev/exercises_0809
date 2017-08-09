class ProductsController < ApplicationController
  before_action :authenticate_user!

  def index
    @products = Product.all

    respond_to do |format|
      format.html
      format.json {render json: @products}
    end
  end
end

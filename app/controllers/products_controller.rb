class ProductsController < ApplicationController

  # CRUD
  def index
    @products = Product
  end

  def show
    @product = Product.find(params[:id])
  end

end

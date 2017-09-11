class ProductsController < ApplicationController

  # CRUD
  def index
    @products = Product
  end

  def show
    @product = Product.find(params[:id])
  end

  def add_to_cart
    @product = Product.find(params[:id])
    redirect_to :back
    flash[:notice] = "测试已加入购物车"
  end

end

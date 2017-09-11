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
    if !current_cart.products.include?(@product)
      current_cart.add_product_to_cart(@product)
      flash[:notice] = "你已将 #{@product.title} 加入购物车"
    else
      flash[:warning] = "你的购物车内已有此商品"
    end
    redirect_back(fallback_location: product_path(@product))
  end

end

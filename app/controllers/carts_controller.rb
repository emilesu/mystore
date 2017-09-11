class CartsController < ApplicationController

  def clean
    current_cart.clean!
    flash[:warning] = "已清空回收站"
    redirect_back(fallback_location: carts_path)
  end



end

class Admin::OrdersController < AdminController

  def index
    @orders = Order.order("id DESC")
  end

  def show
    @order = Order.find(params[:id])
    @product_lists = @order.product_lists
  end

  def ship
    @order = Order.find(params[:id])
    @order.ship!
    redirect_back(fallback_location: admin_order_path)
  end

  def shipped
    @order = Order.find(params[:id])
    @order.deliver!
    redirect_back(fallback_location: admin_order_path)
  end

  def cancel
    @order = Order.find(params[:id])
    @order.cancel_order!
    redirect_back(fallback_location: admin_order_path)
  end

  def return
    @order = Order.find(params[:id])
    @order.return_good!
    redirect_back(fallback_location: admin_order_path)
  end

end

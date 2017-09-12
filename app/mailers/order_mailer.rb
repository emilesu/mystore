class OrderMailer < ApplicationMailer

  # 订单通知
  def notify_order_placed(order)
    @order = order
    @user = order.user
    @product_lists = @order.product_lists

    mail(to: @user.email, subject: "[Mystore]感谢您完成本次下单,一下是您的购物明细#{order.token}")
  end

  # 申请取消订单通知
  def apply_cancel(order)
    @order       = order
    @user        = order.user
    @product_lists = @order.product_lists

    mail(to: "admin@test.com" , subject: "[Mystore] 用户#{order.user.email}申请取消订单 #{order.token}")
  end

  # 发货邮件通知
  def notify_ship(order)
    @order        = order
    @user         = order.user
    @product_lists = @order.product_lists

    mail(to: @user.email, subject: "[Mystore] 您的订单 #{order.token}已发货")
  end

  # 管理员取消订单通知
  def notify_cancel(order)
    @order        = order
    @user         = order.user
    @product_lists = @order.product_lists

    mail(to: @user.email, subject: "[Mystore] 您的订单 #{order.token}已取消")
  end

end

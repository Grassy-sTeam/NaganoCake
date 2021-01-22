class Public::OrdersController < ApplicationController
 before_action :authenticate_customer!

  def new
     @orders = Order.all
     @customer = Customer.find(params[:id])
  end

  def confirm
    @orders = Order.all
    if @order.save
      redirect_to public_orders_complete_path
    end
  end

  def create
    @order = Order.new(order_params)
    @order.customer_id = current_customer.id
    if @order.save
      redirect_to public_orders_confirm_path
    end
  end

  def complete
  end

  def index
    @orders = Order.all
    @order = Order.new
  end


  def update
    @order = Order.find(params[:id])
    if @order.update(order_params)
      redirect_to public_orders_confirm_path
    end
  end


  def show
    @order = Order.find(params[:id])
    @orders = Order.all
    @subtotal = order_items.purchased_price * order_item.count
  end

private
  def order_params
      params.require(:order).permit(:status)
  end
end

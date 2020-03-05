class OrderItemsController < ApplicationController
  def new
    @order_item = OrderItem.new
  end

  def create
    @order_item = OrderItem.new(order_item_params)
  end

  def delete
    @order_item.destroy #is this method right?
    redirect_to order_path(current_order)
  end

  private

  def order_item_params
    params.require(:order_item).permit(:order_id, :item_id)
  end
end

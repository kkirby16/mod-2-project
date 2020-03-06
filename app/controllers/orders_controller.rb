class OrdersController < ApplicationController
  def index
    @orders = Order.all
  end

  def show
    @order = Order.find(params[:id])
  end

  def new
    @order = Order.new
    @specific = ItemLocation.all.select do |item|
      item.location_id == @location.id
    end
    @item = @specific.select do |item|
      item.location_id == @location.id
    end
  end

  def edit
    @order = Order.find(params[:id])
  end

  def update
  end

  def create
    @order = Order.create(order_params) #or order.build?

    if @order.save
      flash[:notice] = "Subject created successfully"
      redirect_to @order
    else
      render :new
    end
  end

  def destroy
    @order = Order.find(params[:id])
    @order.destroy

    redirect_to orders_path #is this path correct?
  end

  private

  def order_params
    params.require(:order).permit(:date_of_order, :user_id)
  end

  # def find_order #should I have this method in here?
  #   @order = Order.find(params[:id])
  # end
end

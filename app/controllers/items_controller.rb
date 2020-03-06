class ItemsController < ApplicationController
  def index
    @items = Item.all
  end

  def show
    @item = Item.find(params[:id])
  end

  def new
    @item = Item.new
  end

  def create
    @item = Item.create(item_params)

    if @item.valid?
      @item.save
      redirect_to @item
    else
      render :new
    end
  end

  def edit
    @item = Item.find(params[:id])
  end

  def update
    @item = Item.find(params[:id])
    byebug
    if @item.comment.length != 0
      @item.comment += "/n/n #{params[:comment]}"
    else @item.comment == nil
      @item.comment = params[:comment]     end
    @item.save
    redirect_to @item
  end

  def destroy
    @item = Item.find(params[:id])
    @item.destroy

    redirect_to items_path
  end

  private

  def item_params
    params.require(:item).permit(:price, :name, :comment)
  end

  # def find_item #should I have this method in here?
  #   @item = Item.find(params[:id])
  # end
end

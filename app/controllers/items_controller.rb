class ItemsController < ApplicationController
  def index
    @items = Item.all
  end

  def show
    @item = Item.find(params[:id])
    if @item.comment != nil
      @all_comments = @item.comment.split("^") #all comments will be an array so can do enum on that.
    else
      @all_comments = [""]
    end
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
    if @item.comment != nil
      @item.comment += "^#{params[:item][:comment]}"
    else
      #byebug
      @item.comment == nil
      @item.comment = params[:item][:comment]
    end
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

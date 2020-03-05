class CartController < ApplicationController
  def update
    add_item_to_cart(params[:item_id])
  end

  def delete #or should this be destroy?
    session.delete(:cart)
  end
end

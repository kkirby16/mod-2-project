class ApplicationController < ActionController::Base
  def login_user(user)
    session[:user_id] = @user.id
  end

  def current_user
    User.find_by(id: session(:user_id))
  end

  def logged_in?
    !!current_user #evaluates to true given they are logged in.
  end

  def authorized
    unless logged_in?
      flash[:notice] = "You must be logged in to see this page."
      redirect_to login_path
    end
  end

  def cart
    sessions[:cart] ||= {}
  end

  def add_item_to_cart(item_id)
    if cart[:item_id]
      cart[:item_id] += 1
    else
      cart[:item_id] = 1
    end
  end

  def total_item_count(item_id)
    cart[item_id]
  end

  def get_items_from_cart
    @cart_items = Item.find(cart.keys)
    @total = 0
    @cart_items.each do |item|
      item_price = cart[item.id.to_s] * item.price #how exactly does this work?
      item.amount = cart[item.id.to_s]
      @total += item_price
    end
  end
end

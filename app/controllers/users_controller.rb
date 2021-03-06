class UsersController < ApplicationController
  def new
    @user = User.new
  end

  def home #make sure can use a user on your website and use that user to do stuff. could have collection select so can use
  end

  #one collection select with all the users and one collcetion seect with all the items.

  def index
    User.all #take all auth stuff
  end

  def create
    @user = User.create(user_params)

    redirect_to @user
  end

  def update
    if @user.update(user_params)
      redirect_to @user
    else
      render :edit
    end
  end

  def show
    @user = User.find(params[:id])
  end

  def destroy
    @user = User.find(session[:user_id])
    @user.destroy
    redirect_to new_user_path
  end

  def login
  end

  #create user
  #can add validations and has secure password stuff if i want.
  #delete user

  private

  def user_params
    params.require(:user).permit(:name, :username, :password_digest)
  end
end

#if need password, do sessions for that.

class SessionsController < ApplicationController
  def create
    @user = User.find_by(username: params[:username])

    if @user && @user.authenticate((params[:password])
        #session[:user_id] = @user.id
        login_user(@user)
        redirect_to @user
    else 
        flash[:notice] = 'wrong'
        redirect_to login_path 
    end 
  end

  def destroy
    session.delete(:user_id)
    flash[:notice] = "Logged Out Successfully"
    redirect_to login_path
  end

  def login
    
  end

  def new
  end

  def create
  end

  #login

  #logout
end

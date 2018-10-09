class UsersController < ApplicationController
  def new
    @user = User.new
  end

  def create
    @user = User.new
    @user.email = params[:user][:email]
    @user.password = params[:user][:password]

    if @user.save
        flash[:notice] = "Succesfully created"
        redirect_to products_url
    else
      flash[:notice] = "Error, please try again"
      render :new
    end
  end
end

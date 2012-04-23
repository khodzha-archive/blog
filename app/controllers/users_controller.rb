class UsersController < ApplicationController
  def new
    @user = User.new
  end

  def create
    @user = User.new(params[:user])
    if @user.save
      redirect_to root_url, :notice => "Signed up!"
    else
      render 'new'
    end
  end

  def show
    @user = User.find(params[:id])
    render 'show'
  end
	
  def edit
    if User.find(params[:id]) == current_user	
      @user = User.find(params[:id])
    else
      redirect_to root_url
    end
  end

  def update
    @user = User.find(params[:id])
    if @user.update_attributes(params[:user])
      redirect_to root_url, :notice => "Profile updated!"
    else
      render 'edit'
    end
  end
end

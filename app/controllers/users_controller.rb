class UsersController < ApplicationController

  def index
    @users = User.all
    render :index
  end

  def new
    @user = User.new
    render :new
  end

  def create
    @user = User.new(user_params)
    if @user.save
      redirect_to users_path
    else
      render :new
    end
  end

  def edit
    if current_user.try(:admin?)
      @user = User.find(params[:id])
      render :edit
    else
      flash[:notice] = "Sorry, you are not authorized!"
      redirect_to users_path
    end
  end

  def show
    @user = User.find(params[:id])
    render :show
  end

  def update
    @user= User.find(params[:id])
    if @user.update(user_params)
      redirect_to users_path
    else
      render :edit
    end
  end

  def destroy
    if current_user.try(:admin?)
      @user = User.find(params[:id])
      @user.destroy
      redirect_to users_path
    else
      flash[:notice] = "Sorry, you are not authorized!"
      redirect_to users_path
    end
  end

  private
  def user_params
    params.require(:user).permit(:email)
  end
end

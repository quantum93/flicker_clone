class PhotosController < ApplicationController
  def new
    @user = User.find(params[:user_id])
    @photo = @user.photos.new
    render :new
  end

  def create
  @user = User.find(params[:user_id])
  if @user.email == current_user.email
    @photo = @user.photos.new(photo_params)
    # binding.pry
    if @photo.save
      redirect_to user_path(@user)
    else
      render :new
    end
  else
    flash[:notice] = "Sorry, you are not authorized!"
    redirect_to user_path(@user)
  end
end

def show
  @user = User.find(params[:user_id])
  @photo = Photo.find(params[:id])
  render :show
end

def edit
  @user = User.find(params[:user_id])
  @photo = Photo.find(params[:id])
  render :edit
end

def update
  @photo = Photo.find(params[:id])
  if @photo.update(photo_params)
    redirect_to user_path(@photo.user)
  else
    render :edit
  end
end

def destroy
  @photo = Photo.find(params[:id])
  @photo.destroy
  redirect_to user_path(@photo.user)
end

private
  def photo_params
    params.require(:photo).permit(:title, :image)
  end

end

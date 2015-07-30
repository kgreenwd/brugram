class PhotosController < ApplicationController

  def index
    @photos = Photo.where(user_id: current_user.id).order(created_at: :desc)
  end

  def new
    @photo = Photo.new
  end

  def create
    @photo = current_user.photos.build photo_params
    if @photo.save
      redirect_to @photo
    else
      render 'new'
    end
  end

  def show
    @photo = Photo.find params[:id]
  end

  def destroy
    @photo = Photo.find params[:id]
    if @photo.user = current_user
      @photo.destroy
      redirect_to photos_path
      flash.notice = "Photo successfully deleted"
    else
      redirect_to photos_path
      flash.alert = "Invalid Permissions"
    end
  end

  private
    def photo_params
      params.require(:photo).permit(:public, :caption, :image)
    end

end
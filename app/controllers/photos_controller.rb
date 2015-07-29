class PhotosController < ApplicationController
  def index
    @list_of_photos = Photo.all
  end

def new
  @photo = Photo.new
end

def show
  @photo = Photo.find(params[:id])
end

def create
  @photo = Photo.create(params)
end

def edit
  @photo = Photo.find(params[:id])
end

def update
  @photo = Photo.find(params[:id])
  @photo.update_attributes(photo_params)
  redirect_to @photo
end

def destroy
  @photo = Photo.find(params[:id])
  @photo.destroy
  redirect_to '/'

end

private

def photo_params
  params.require(:photo).permit(:source,:caption)
end

end


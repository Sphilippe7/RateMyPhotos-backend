class PhotosController < ProtectedController
  before_action :set_photo, only: [:show, :update, :destroy]
  def index
    @photos = Photo.all

    render json: @photos
  end

  def show
    render json: Photo.find(params[:id])
  end

  def set_photo
    @photo = Photo.find(params[:id])
  end

  def photo_params
    params.require(:photo).permit(:name, :category, :url, :user_id)
  end

  def create
    @photo = Photo.new(photo_params)

    if @photo.save
      render json: @photo, status: :created, location: @photo
    else
      render json: @photo.errors, status: :unprocessable_entity
    end
  end

  def update
    if @photo.update(photo_params)
      head :no_content
    else
      render json: @photo.errors, status: :unprocessable_entity
    end
  end

  def destroy
    @photo.destroy

    head :no_content
  end

  private :set_photo, :photo_params
end

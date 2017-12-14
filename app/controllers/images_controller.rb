class ImagesController < ApplicationController
  def index
    @images = Image.order("created_at DESC")
    render json: @images
  end

  def create
    @image = Image.create(image_params)
    render json: @image
  end

  def update
    @image = Image.find(params[:id])
    @image.update_attributes(image_params)
    render json: @image
  end

  private
  
    def image_params
      params.require(:image).permit(:url, :alt, :caption)
    end
end

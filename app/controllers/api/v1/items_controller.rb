class Api::V1::RestaurantsController < Api::V1::BaseController
  require "image_processing/mini_magick"

  before_action :set_item,         only: [ :show ]
  before_action :set_item_variant, only: [ :variant ]
  
  def show
    if ImageProcessing::MiniMagick.valid_image?(@item.image)
      @item
    else
      render json: { 'error': 'Invalid Entity' }, status: 403
    end
  end
  
  def variant
    if params&[:width] &&  if params&[:height] 
      @item.image = resize_image(@item.image, params[:width], params[:height])
    else
      render json: { 'error': 'Invalid Input' }, status: 403
    end
  end
  
  private
  
  def set_item
    @item = Item.find(params[:id])
  end
  
  def set_item_variant
    @item = Item.find(params[:item_id])
  end

  def resize_image(image, width, height)
    pipeline = ImageProcessing::MiniMagick.source(image)
    result = pipeline.resize_to_fit!(width, height)
    MiniMagick::Image.new(result.path).dimension
  end
end
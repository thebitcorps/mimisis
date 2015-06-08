class GarmentsController < ApplicationController
  def index
    @carousel = Carousel.last
    check_garment_type
    @garments = Garment.where kind: params[:garment_type]
  end

  def show
    @carousel = Carousel.last
    @garment = Garment.find(params[:id])
  end

  def check_garment_type
    if !params[:garment_type]
      params[:garment_type] = 'ropa'
    end
  end
end

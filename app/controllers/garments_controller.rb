class GarmentsController < ApplicationController
  def index
    @carousel = Carousel.last
    check_garment_type
    @garments = Garment.where kind: params[:garment_type]
    respond_to do |format|
      format.html
      format.js{@garments}
    end
  end

  def show
    @carousel = Carousel.last
    @garment = Garment.find(params[:id])
    respond_to do |format|
      format.html
      format.js{@garment}
    end
  end



  def check_garment_type
    if !params[:garment_type]
      params[:garment_type] = 'ropa'
    end
  end
end

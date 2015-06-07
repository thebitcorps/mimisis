class VisitorsController < ApplicationController
  before_action :set_carousel, only: [:home, :collection]

  def home
    @garments = Garment.latest_garments
  end

  def collection
    check_garment_type
    @garments = Garment.where kind: params[:garment_type]
  end

  def garment
    @garment = Garment.find params[:id]
  end

  private
  def set_carousel
    @carousel = Carousel.last
  end

  def check_garment_type
    if !params[:garment_type]
      params[:garment_type] = 'ropa'
    end
  end

end

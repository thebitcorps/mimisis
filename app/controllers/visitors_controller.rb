class VisitorsController < ApplicationController
  def home
    @latest = Garment.latest_garments
    @carousel = Carousel.last
  end

  def collection
    sanitize_collection_id
    @collection = Collection.find params[:collection_id]
    @allCollections = Collection.latest_collections
  end

  def garment
    @garment = Garment.find params[:id]
  end

  private
  def sanitize_collection_id
    unless params[:collection_id]
      params[:collection_id] = Collection.last
    end
  end
end

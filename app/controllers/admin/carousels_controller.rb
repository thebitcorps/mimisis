class Admin::CarouselsController < ApplicationController

  # GET /carousels
  # GET /carousels.json
  def index
    @carousel = Carousel.last
  end

end

class Admin::CarouselsController < ApplicationController
  def index
    @carousel = Carousel.last
  end
end

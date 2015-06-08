class Admin::CarouselsController < ApplicationController
  layout 'admin'
  def index
    @carousel = Carousel.last
  end
end

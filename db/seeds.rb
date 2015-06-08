Carousel.create

c = Carousel.last

["slider.png", "slider2.jpg"].each do |s|
  c.pictures.create(url: s, title: s.split.first)
end
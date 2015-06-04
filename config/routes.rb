Rails.application.routes.draw do
  get 'visitors/home'

  get 'visitors/collection'

  get 'visitors/garment/:id' => 'visitors#garment'

  # resources :visitors do
  #   get :garment, on: :member
  #   get :collection, on: :collection
  #   get :home, as: 'home'
  # end

  

  resources :pictures
  resources :carousels
  resources :collections
  resources :garments

  root to: "visitors#home"
end

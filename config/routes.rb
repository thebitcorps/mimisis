Rails.application.routes.draw do

  get 'visitors/home'
  # get 'visitors/collection'
  # get 'visitors/garment/:id' => 'visitors#garment'

  resources :garments, only: [:index]
  resources :collections, only: [:index]

  namespace :admin do
    resources :pictures, :carousels, :collections, :garments
  end

  root to: "visitors#home"
end

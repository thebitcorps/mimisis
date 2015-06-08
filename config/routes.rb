Rails.application.routes.draw do

  get 'garments/index'

  get 'garments/show'

  get 'visitors/home'
  # get 'visitors/collection'
  # get 'visitors/garment/:id' => 'visitors#garment'

  resources :garments, only: [:index, :show]
  resources :collections, only: [:index]

  namespace :admin do
    resources :pictures, :carousels, :collections, :garments
  end

  root to: "visitors#home"
end

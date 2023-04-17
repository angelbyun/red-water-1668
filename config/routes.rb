Rails.application.routes.draw do
  resources :dishes, only: [:show, :update]
  resources :chefs, only: [:show]
  resources :chef_ingredients, only: [:index]
  
  post '/dishes/:id', to: 'dishes#create'
end

Rails.application.routes.draw do
  post '/dishes/:id', to: 'dishes#create'
  
  resources :dishes, only: [:show, :update]
end

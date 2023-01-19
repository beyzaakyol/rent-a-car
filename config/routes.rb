Rails.application.routes.draw do
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"


  get '/cars', to: 'cars#index'
  get '/cars/:car_id', to: 'cars#show'
  patch '/cars/:car_id', to: 'cars#update'
  patch '/cars/:car_id/rent', to: 'cars#rent'
  post '/cars', to: 'cars#create'
end

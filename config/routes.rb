Rails.application.routes.draw do
  # EXAMPLE HTML ROUTE
  # get "/photos" => "photos#index"

  # EXAMPLE JSON ROUTE WITH API NAMESPACE
  namespace :api do
    get '/products' => 'products#index'
    get '/products/:id' => 'products#show'
    get '/products/:id' => 'products#show'
    # update
    patch '/products/:id' => 'products#update'
    # create
    post '/products' => 'products#create'

    post "/users" => "users#create"
    post "/sessions" => "sessions#create"

  end
end

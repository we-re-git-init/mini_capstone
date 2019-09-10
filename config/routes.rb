Rails.application.routes.draw do
  namespace :api do
    get 'suppliers/index'
  end
  get 'suppliers/index'
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

    post '/users' => 'users#create'
    post '/sessions' => 'sessions#create'

    post '/orders' => 'orders#create'
    get '/orders' => 'orders#index'
    get '/orders/:id' => 'orders#show'
    
    post '/carted_products' => 'carted_products#create'
    get '/carted_products' => 'carted_products#index'
    delete '/carted_products/:id' => 'carted_products#destroy'
    
    get '/suppliers' => 'suppliers#index'
  end
end

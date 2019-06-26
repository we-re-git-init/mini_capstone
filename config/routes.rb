Rails.application.routes.draw do
  # EXAMPLE HTML ROUTE
  # get "/photos" => "photos#index"

  # EXAMPLE JSON ROUTE WITH API NAMESPACE
  namespace :api do
    get '/product' => 'products#the_product'
    get '/all_products' => 'products#all_products'
  #   get "/photos" => "photos#index"
  end
end

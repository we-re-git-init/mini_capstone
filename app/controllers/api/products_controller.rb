class Api::ProductsController < ApplicationController
  def the_product
    product_name = params["name"]
    @product = Product.find_by(name: product_name)
    render 'product.json.jb'
  end

  def all_products
    @products = Product.all
    render 'all.json.jb'
  end
end

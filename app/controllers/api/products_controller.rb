class Api::ProductsController < ApplicationController
  def the_product
    product_id = params["id"]
    @product = Product.find_by(id: product_id)
    render 'product.json.jb'
  end

  def all_products
    @products = Product.all
    render 'all.json.jb'
  end
end

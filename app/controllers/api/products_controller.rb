class Api::ProductsController < ApplicationController
  def the_product
    @product = Product.first
    render 'product.json.jb'
  end

  def all_products
    @products = Product.all
    render 'all.json.jb'
  end
end

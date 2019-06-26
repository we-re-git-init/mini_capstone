class Api::ProductsController < ApplicationController
  def the_product
    @product = Product.first
    render 'product.json.jb'
  end


end

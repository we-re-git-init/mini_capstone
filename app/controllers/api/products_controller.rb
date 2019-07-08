class Api::ProductsController < ApplicationController
  def index
    if params[:search]
      @products = Product.where("name LIKE ?", "%#{params[:search]}%")
    else
      @products = Product.all
    end
    render 'index.json.jb'
  end

  def create
    @product = Product.new(
      name: params[:name],
      price: params[:price],
      image_url: params[:image_url],
      description: params[:description]
    )
    if @product.save
      render 'show.json.jb'
    else
      render 'errors.json.jb', status: :unprocessible_entity
    end
  end

  def show
    @product = Product.find_by(id: params[:id])
    render 'show.json.jb'
  end

  def update
    @product = Product.find_by(id: params[:id])
    p "here is the price"
    p params[:price]
    if @product.update(name: params[:name] || @product.name,
         price: params[:price] || @product.price,
         image_url: params[:image_url] || @product.image_url,
         description: params[:description] || @product.description
        )
      render 'show.json.jb'
    else
      render 'errors.json.jb', status: :unprocessible_entity
    end
  end
end

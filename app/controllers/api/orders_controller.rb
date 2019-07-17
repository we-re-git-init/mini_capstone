class Api::OrdersController < ApplicationController
  before_action :authenticate_user

  def index
    # @orders = Order.where(user_id: current_user.id)
    @orders = current_user.orders
    render 'index.json.jb'
  end

  def show
    @order = Order.find_by(id: params[:id])
    render 'show.json.jb'
  end

  def create
    # find all the carted products in the shopping cart for the user who is logged in
    @carted_products = current_user.carted_products.where(status: 'carted')
    # figure out how much each one will cost (price * quantity)
    subtotal = 0
    tax = 0
    @carted_products.each do |carted_product|
      subtotal += carted_product.quantity * carted_product.product.price
      tax += carted_product.quantity * carted_product.product.tax
    end
    # add up all the price * quantities for a subtotal
    total = subtotal + tax

    render 'show.json.jb'
  end
end

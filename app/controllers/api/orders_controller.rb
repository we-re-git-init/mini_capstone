class Api::OrdersController < ApplicationController
  def index
    # @orders = Order.where(user_id: current_user.id)
    if current_user
      @orders = current_user.orders
      render 'index.json.jb'
    else
      render json: [], status: :unauthorized
    end
  end

  def show
    @order = Order.find_by(id: params[:id])
    render 'show.json.jb'
  end

  def create
    # subtotal
    # quantity * price
    product = Product.find_by(id: params[:product_id])

    calculated_subtotal = params[:quantity].to_i * product.price
    calculated_tax = params[:quantity].to_i * product.tax
    calculated_total = calculated_subtotal + calculated_tax


    @order = Order.new(
      quantity: params[:quantity],
      subtotal: calculated_subtotal,
      tax: calculated_tax,
      total: calculated_total,
      user_id: current_user.id,
      product_id: params[:product_id]
    )
    @order.save
    render 'show.json.jb'
  end
end

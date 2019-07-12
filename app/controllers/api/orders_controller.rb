class Api::OrdersController < ApplicationController
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

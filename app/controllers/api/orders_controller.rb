class Api::OrdersController < ApplicationController
  def create
    @order = Order.new(
      quantity: 12,
      subtotal: 27,
      tax: 3,
      total: 30,
      user_id: 1,
      product_id: 61
    )
    @order.save
    render 'show.json.jb'
  end
end

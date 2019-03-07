class ChargesController < ApplicationController
  include BasketsHelper
  before_action :set_price
  before_action :set_amount

  def new
  end

  def create

    customer = Stripe::Customer.create({
      email: params[:stripeEmail],
      source: params[:stripeToken],
    })

    charge = Stripe::Charge.create({
      customer: customer.id,
      amount: @amount,
      description: 'Rails Stripe customer',
      currency: 'eur',
    })

    if Stripe::CardError != true
      Facturation.create(basket_id: @current_basket.id, price: @price, user_id: current_user.id)
      redirect_to root_path
    end

    rescue Stripe::CardError => e
      flash[:error] = e.message
      redirect_to new_charge_path
  end

  private

  def set_amount
    @amount = (@price * 100).to_i
  end
end

class ChargesController < ApplicationController
  before_action :authenticate_user!
  before_action :amount_to_be_charged

  def new
  end

  def thanks
    render 'charges/thanks'
  end

  def create
    customer = StripeTool.create_customer(
    email: params[:stripeEmail],
    stripe_token: params[:stripeToken])

    charge = StripeTool.create_charge(
    customer_id: customer.id,
    amount: @amount,
    description: 'Rails Stripe customer')
    redirect_to thanks_path
    current_order.update(status: "Payment Accepted")
    rescue Stripe::CardError => e
      flash[:error] = e.message
      redirect_to new_charge_path
  end

  def amount_to_be_charged
    @amount = (current_order.total * 100).to_i
  end

end

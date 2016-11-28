class ChargesController < ApplicationController
  def new
  end

  def create
    # Amount in cents
    @amount = params[:amount]
    @amount = @amount.gsub('.', '').gsub(',', '')

    customer = Stripe::Customer.create(
      :email => params[:stripeEmail],
      :source  => params[:stripeToken]
    )

    @amount = @amount.to_i

    charge = Stripe::Charge.create(
      :customer    => customer.id,
      :amount      => @amount,
      :description => 'Rails Stripe customer',
      :currency    => 'cad'
    )

  rescue Stripe::CardError => e
    flash[:error] = e.message
    redirect_to new_charge_path
  end
end

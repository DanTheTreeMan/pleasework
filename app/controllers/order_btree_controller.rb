# Controller for handling BrainTree utilization
# https://www.sitepoint.com/buy-time-braintree-v-zero-sdk/
class OrderBtreeController < ApplicationController
  def new
    @client_token = Braintree::ClientToken.generate
  end

  def create
    nonce = params[:payment_method_nonce]
    render action: :new and return unless nonce
    result = Braintree::Transaction.sale(
      amount: order_item.total_price,
      payment_method_nonce: nonce
    )

    flash[:notice] = "Sale successful. Head to Sizzler" if result.success?
    flash[:alert] = "Something is amiss. #{result.transaction.processor_response_text}" unless result.success?
    redirect_to action: :new
  end
end

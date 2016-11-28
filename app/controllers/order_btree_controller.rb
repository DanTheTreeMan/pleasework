# Controller for handling BrainTree utilization
# https://www.sitepoint.com/buy-time-braintree-v-zero-sdk/
class OrderBtreeController < ApplicationController
  def new
    @client_token = Braintree::ClientToken.generate
  end

  def create
    @params = params
    render action: :new
  end
end

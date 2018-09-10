class SubscriptionsController < ApplicationController
  def create
    Subscription.create(email: params[:subscription][:email])
  end
end

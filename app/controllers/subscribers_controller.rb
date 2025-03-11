class SubscribersController < ApplicationController
  allow_unauthenticated_access
  before_action :set_car

  def create
    @car.subscribers.where(subscriber_params).first_or_create
    redirect_to @car, notice: "You are now subscribed."
  end

  private

  def set_car
    @car = Car.find(params[:car_id])
  end

  def subscriber_params
    params.expect(subscriber: [ :email ])
  end
end

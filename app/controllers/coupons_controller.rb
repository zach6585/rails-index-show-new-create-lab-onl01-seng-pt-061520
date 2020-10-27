class CouponsController < ApplicationController
  def index
    @codes = Coupon
  end 
end 
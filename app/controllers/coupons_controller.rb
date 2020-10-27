class CouponsController < ApplicationController
  def index
    @coupons = Coupon.all 
  end 
  
  def show 
    @coupon = Coupon.find_by_id(params[:id])
  end 
  def new 
  end 
  
  def create 
    a = Coupon.new 
    a.coupon_code = params[:coupon_code]
    a.store = params[:store]
    a.save 
    redirect_to coupon_path
  end 
end 
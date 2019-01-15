class CouponsController < ApplicationController

  def index
    @coupons = Coupon.all
  end

  def new
    @coupon = Coupon.new
  end

  def show
    @coupon = Coupon.find(params[:id])
  end


  def create

    # @coupon=Coupon.new
    # @coupon.coupon_code = params[:coupon_code]
    # @coupon.store = params[:store]
    # @coupon.save
      ######## above code can be done with line below #########
    @coupon = Coupon.create(coupon_code: params[:coupon][:coupon_code], store: params[:coupon][:store])
    # byebug

    redirect_to coupon_path(@coupon)

  end
  def edit
    # @coupon = Coupon.find(params[:id])
    # @coupon.coupon_code = params[:coupon_code]
    # @coupon.store = params[:store]
    # @coupon.save
    # @coupon = Coupon.create(coupon_code: params[:coupon_code], store: params[:store])
    # redirect_to coupon_path
    #
    # redirect_to coupon_path(@coupon)
  end
end

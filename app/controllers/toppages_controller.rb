class ToppagesController < ApplicationController
  def index
    @couponlists = CouponListMaster.all.page(params[:page]).per(3)
  end
end

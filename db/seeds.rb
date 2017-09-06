# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

	# 初回に限りapiの全データを取得後にcoupon_list_masterテーブルに保存する
	require 'net/http'
	require 'uri'
	require 'json'

	if CouponListMaster.count <= 0 then

		url = "https://allcoupon.jp/api-v1/coupon?output=json&apikey=NmQyZGQwZDI5MTQy"
		result = JSON.parse(Net::HTTP.get(URI.parse(url)))
		
		result.each do |b|
			c = CouponListMaster.new(coupon_site:b["coupon_site"],coupon_url:b["coupon_url"],coupon_title:b["coupon_title"],coupon_summary:b["coupon_summary"],coupon_addr:b["coupon_addr"],coupon_access:b["coupon_access"],coupon_teika:b["coupon_teika"],coupon_kakaku:b["coupon_kakaku"],coupon_shop:b["coupon_shop"],coupon_phote:b["coupon_phote"],coupon_lat:b["coupon_lat"],coupon_lng:b["coupon_lng"],coupon_untilldatetime:b["coupon_untilldatetime"],coupon_max:b["coupon_max"],coupon_sold:b["coupon_sold"],priority:b["priority"],coupon_original_url:b["coupon_original_url"],coupon_site_url:b["coupon_site_url"],category_name:b["category_name"],category_type:b["category_type"],site_code:b["site_code"])
			c.save
		end
	end
	
	
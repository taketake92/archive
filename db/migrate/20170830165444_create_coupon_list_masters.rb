class CreateCouponListMasters < ActiveRecord::Migration[5.0]
  def change
    create_table :coupon_list_masters do |t|
      t.string :coupon_site
      t.string :coupon_url
      t.text :coupon_title
      t.text :coupon_summary
      t.string :coupon_addr
      t.string :coupon_access
      t.integer :coupon_teika
      t.integer :coupon_kakaku
      t.string :coupon_shop
      t.string :coupon_phote
      t.integer :coupon_lat
      t.integer :coupon_lng
      t.datetime :coupon_untilldatetime
      t.integer :coupon_max
      t.integer :coupon_sold
      t.integer :priority
      t.string :coupon_original_url
      t.string :coupon_site_url
      t.string :category_name
      t.string :category_type
      t.string :site_code

      t.timestamps
    end
  end
end

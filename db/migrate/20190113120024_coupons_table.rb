class CouponsTable < ActiveRecord::Migration
    def change
    create_table :coupons do |t|
      t.string :coupon_code
      t.text :store

      t.timestamps
    end
  end
end

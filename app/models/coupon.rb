class Coupon < ActiveRecord::Base

    def to_all
        self.coupon_code + " | " + self.store
    end
end

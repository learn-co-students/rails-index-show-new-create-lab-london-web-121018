class Coupon < ActiveRecord::Base 
    
    def both
        self.coupon_code + '|' + self.store
    end
end
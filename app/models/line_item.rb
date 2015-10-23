class LineItem < ActiveRecord::Base
  belongs_to :order
  belongs_to :deal
  belongs_to :cart

 # def to_s
 #   title
 # # end
 def total_price
  deal.price * quantity
 end

end

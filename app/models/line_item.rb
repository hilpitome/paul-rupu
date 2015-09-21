class LineItem < ActiveRecord::Base
  belongs_to :deal
  belongs_to :cart

 # def to_s
 #   title
 # # end

end

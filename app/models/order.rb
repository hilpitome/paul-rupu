class Order < ActiveRecord::Base

  PAYMENT_TYPES = [ "M-pesa", "Credit card", "Cash" ]
  validates :name, :address, :email, presence: true
  validates :pay_type, inclusion: PAYMENT_TYPES
end

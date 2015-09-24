class AddOldPriceToDeals < ActiveRecord::Migration
  def change
    add_column :deals, :old_price, :decimal, precision: 8, scale: 2
  end
end

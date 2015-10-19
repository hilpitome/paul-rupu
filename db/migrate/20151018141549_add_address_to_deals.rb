class AddAddressToDeals < ActiveRecord::Migration
  def change
    add_column :deals, :address, :integer
  end
end

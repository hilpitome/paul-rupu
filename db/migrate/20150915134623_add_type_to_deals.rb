class AddTypeToDeals < ActiveRecord::Migration
  def change
    add_column :deals, :type, :string
  end
end

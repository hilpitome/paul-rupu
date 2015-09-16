class RemoveImageUrlFromDeals < ActiveRecord::Migration
  def change
    remove_column :deals, :image_url, :string
  end
end

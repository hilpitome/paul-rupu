class RemoveTitleFromTableDeal < ActiveRecord::Migration
  def change
    remove_column :deals, :title, :string
  end
end

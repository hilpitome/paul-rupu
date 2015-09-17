class RemoveTitleFromTableDeal < ActiveRecord::Migration
  def change
    remove_column :deals, :Title, :string
  end
end

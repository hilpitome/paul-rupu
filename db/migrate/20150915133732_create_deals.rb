class CreateDeals < ActiveRecord::Migration
  def change
    create_table :deals do |t|
      t.string :title
      t.decimal :price, precision: 8, scale: 2
      t.text :description
      t.string :image_url

      t.timestamps null: false
    end
  end
end

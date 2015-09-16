class AddPaperclipFieldsToDeal < ActiveRecord::Migration
  def change
    add_column :deals, :image_file_name,    :string
    add_column :deals, :image_content_type, :string
    add_column :deals, :image_file_size,    :integer
    add_column :deals, :image_updated_at,   :datetime

  end
end

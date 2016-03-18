class Deal < ActiveRecord::Base
  has_attached_file :image, styles: { medium: "300x300>", thumb: "100x100>" }
  validates_attachment_content_type :image, :content_type => ["image/jpg", "image/jpeg", "image/png"]
  self.inheritance_column = :foo

  

  has_many :line_items
  has_many :orders, through: :line_items
  before_destroy :ensure_not_referenced_by_any_line_item


  private

# ensure that there are no line items referencing this deal
  def ensure_not_referenced_by_any_line_item
       if line_items.empty?
        return true
       else
        errors.add(:base, 'Line Items present')
       return false
       end
  end

end

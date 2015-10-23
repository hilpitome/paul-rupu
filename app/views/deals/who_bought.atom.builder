atom_feed do |feed|
 feed.title "Who bought #{@deal.description}"

 feed.updated @latest_order.try(:updated_at)

 @deal.orders.each do |order|
  feed.entry(order) do |entry|
   entry.title "Order #{order.id}"
   entry.summary type: 'xhtml' do |xhtml|
    xhtml.p "Shipped to #{order.address}"

    xhtml.table do
     xhtml.tr do
      xhtml.th 'Deal'
      xhtml.th 'Quantity'
      xhtml.th 'Total Price'
    end

    order.line_items.each do |line_item|
     xhtml.tr do
      xhtml.td line_item.deal.description
      xhtml.td line_item.quantity
      xhtml.td "Kes #{item.total_price}"
     end
    end
   xhtml.tr do
    xhtml.th 'total', colspan: 2
    xhtml.th number_to_currency \
     order.line_items.map(&:total_price).sum
    end
   end
   xhtml.p "Paid by #{order.pay_type}"
  end
  # entry.user do |user|
  #  user.name order.name
  #  user.email order.email
  # end
 end
 end
end

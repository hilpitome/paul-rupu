ActiveAdmin.register Deal do

# See permitted parameters documentation:
# https://github.com/activeadmin/activeadmin/blob/master/docs/2-resource-customization.md#setting-up-strong-parameters
#
# permit_params :list, :of, :attributes, :on, :model
#
# or
#
# permit_params do
#   permitted = [:permitted, :attributes]
#   permitted << :other if resource.something?
#   permitted
# end
permit_params :price, :old_price, :description, :company, :type, :image, :address

	form do |f|
		f.input :price
		f.input :old_price
		f.input :description
		f.input :company
		f.select :type, options_for_select(%w[Travel FoodAndDrink EventAndActivities Beauty])
		f.input :image
		f.input :address
		actions
	end

end

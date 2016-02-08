ActiveAdmin.register_page "Dashboard" do

  menu priority: 1, label: proc{ I18n.t("active_admin.dashboard") }

  content title: proc{ I18n.t("active_admin.dashboard") } do
    

    # Here is an example of a simple dashboard with columns and panels.
    #
    section "Recent Deals" do
        table_for Deal.order("created_at desc").limit(5) do
            column :company do |deal|
                link_to deal.company, [:admin, deal]
            end
            column :created_at
        end
        strong { link_to "View All deals", admin_deals_path }
    end

    #   column do
    #     panel "Info" do
    #       para "Welcome to ActiveAdmin."
    #     end
    #   end
    # end
  end # content
end

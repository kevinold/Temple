ActiveAdmin.register Promo do
  form :partial => "form"

  filter :name
  filter :details

  index do
    column "Name" do |p|
      link_to p.name, edit_admin_promo_path(p)
    end
    column "PDF", :image_identifier
    column "Date", :updated_at
    default_actions
  end
end

ActiveAdmin.register Happening do
  form :partial => "form"

  filter :name
  filter :details

  index do
    column "Name" do |h|
      link_to h.name, edit_admin_happening_path(h)
    end
    column "PDF", :image_identifier
    column "Date", :updated_at
    default_actions
  end
end

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

  #form do |f|
    #f.inputs "Details" do
      #f.input :title
      #f.input :published_at, :label => "Publish Post At"
      #f.input :category
    #end
    #f.inputs "Content" do
      #f.input :body
    #end
    #f.buttons
  #end

  #sidebar :help, :only => [:new, :edit] do
    #p "Enter a Name and Detail (optional) and select the PDF to be uploaded."
  #end
end

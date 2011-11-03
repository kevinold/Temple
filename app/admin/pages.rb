ActiveAdmin.register Page do
  filter :title
  form :partial => "form"

  index do
    column "Page Title" do |page|
      link_to page.title, admin_page_path(page)
    end
    column "Section", :section
    column "Published" do |sermon|
      sermon.published ? 'Yes' : 'No'
    end
  end
  
end

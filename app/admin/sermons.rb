ActiveAdmin.register Sermon do
  filter :title
  filter :date

  index do
    column "Title" do |sermon|
      link_to sermon.title, admin_sermon_path(sermon)
    end
    column "Date", :date
    column "Verses", :verses
    column "Published" do |sermon|
      sermon.published ? 'Yes' : 'No'
    end
  end

end

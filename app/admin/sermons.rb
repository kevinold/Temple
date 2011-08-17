ActiveAdmin.register Sermon do
  filter :title
  filter :date

  index do
    column "Title" do |sermon|
      link_to sermon.title, edit_admin_sermon_path(sermon)
    end
    column "Date", :date
    column "Verses", :verses
    column("Published") {|announcement| status_tag(announcement.published? ? 'published' : 'draft') }
    default_actions
  end

end

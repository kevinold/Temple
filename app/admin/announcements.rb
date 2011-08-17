ActiveAdmin.register Announcement do

  index do
    column "Headline" do |announcement|
      link_to announcement.what, edit_admin_announcement_path(announcement)
    end
    column "Date", :ann_date
    column "Time", :ann_time
    column "Location", :location
    column("Published") {|announcement| status_tag(announcement.published? ? 'published' : 'draft') }
    default_actions
  end

end

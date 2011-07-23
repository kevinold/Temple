ActiveAdmin.register Announcement do

  index do
    column "Headline" do |announcement|
      link_to announcement.what, admin_announcement_path(announcement)
    end
    column "Date", :ann_date
    column "Time", :ann_time
    column "Location", :location
    column "Published" do |announcement|
      announcement.published ? 'Yes' : 'No'
    end
  end

end

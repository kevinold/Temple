ActiveAdmin.register Announcement do

  index do
    column "Headline" do |announcement|
      link_to announcement.what, edit_admin_announcement_path(announcement)
    end
    column "Date", :ann_date
    column ("Time") {|a| a.display_ann_time }
    column "Location", :location
    column("Published") {|announcement| status_tag(announcement.published? ? 'published' : 'draft') }
    default_actions
  end


  show do |announcement|
    attributes_table do
      row "Headline" do
        announcement.what
      end
      row "Date" do
        announcement.ann_date
      end
      row "Time" do
        announcement.display_ann_time 
      end
      row "Location" do
        announcement.location
      end
      row "Published" do
        status_tag(announcement.published? ? 'published' : 'draft')
      end
    end
  end 
end

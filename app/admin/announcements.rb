ActiveAdmin.register Announcement do
  form :partial => "form"
  #controller do
    #def after_initialize
      #@announcement = Announcement.new
      #@announcement.ann_date ||= Date.today
    #end 
  #end
  #form do |f|
    #f.inputs do
      ##f.input :date_and_time, :as => :datepicker
      #f.input :what, :label => "Headline"
      #f.input :ann_date, :as => :date, :hint => 'Select a date',
         #:prompt => {:day => "Day", :month => "Month", :year => "Year"},
         #:start_year => Time.now.year
      #f.input :ann_time, :as => :string, :label => "Time", :input_html => {:class => 'timePickerField'}
      ##f.input :ann_time
      #f.input :details, :as => :ckeditor
      #f.input :location, :label => "Location"
      #f.input :published, :label => "Published"
    #end
    #f.buttons
  #end

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
      row "Details" do
        announcement.details.html_safe
      end
    end
  end 
end

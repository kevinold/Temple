ActiveAdmin.register Happening do
  form :html => { :multipart => true, :enctype => "multipart/form-data" } do |f|
    f.inputs "Happening", do
      f.input :name
      f.input :image, :as => :file
      f.input :details
    end    
    f.buttons
  end  
end

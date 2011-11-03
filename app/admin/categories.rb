ActiveAdmin.register Category do
  # Add conditional menu support from pull request 177 in github
  menu :label => "Categories", :if => proc { current_admin_user.id === 2 }
  
end

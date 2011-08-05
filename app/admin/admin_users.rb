ActiveAdmin.register AdminUser do
  # Add conditional menu support from pull request 177 in github
  menu :label => "User management", :if => proc { current_admin_user.id === 2 }

  index do
    column :email
    column :current_sign_in_at
    column :last_sign_in_at
    column :sign_in_count
    default_actions
  end

  form do |f|
    f.inputs "Admin Details" do
      f.input :email
    end
    f.buttons
  end
end

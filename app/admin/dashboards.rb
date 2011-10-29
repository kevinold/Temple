ActiveAdmin::Dashboards.build do

  section "Recent Announcements", :priority => 1 do
    table_for Announcement.order('id desc').limit(10) do
      column("Headline")  {|a| link_to(a.what, admin_announcement_path(a)) } 
      column "Date", :ann_date 
      column("Published") {|a| status_tag(a.published? ? 'published' : 'draft') }
    end
    div do
      link_to("New Announcement", new_admin_announcement_path, :style => 'font-weight:bold')
    end
  end

  section "Recent Happenings", :priority => 2 do
    table_for Happening.order('id desc').limit(10) do
      column("Name")  {|h| link_to(h.name, admin_happening_path(h)) } 
    end
    div do
      link_to("New Happening", new_admin_happening_path, :style => 'font-weight:bold')
    end
  end

  section "Recent Sermons", :priority => 3 do
    table_for Sermon.order('id desc').limit(10) do
      column("Title")  {|a| link_to(a.title, admin_sermon_path(a)) } 
    end
    div do
      link_to("New Sermon", new_admin_sermon_path, :style => 'font-weight:bold')
    end
  end




  # Define your dashboard sections here. Each block will be
  # rendered on the dashboard in the context of the view. So just
  # return the content which you would like to display.
  
  # == Simple Dashboard Section
  # Here is an example of a simple dashboard section
  #
  #   section "Recent Posts" do
  #     ul do
  #       Post.recent(5).collect do |post|
  #         li link_to(post.title, admin_post_path(post))
  #       end
  #     end
  #   end
  
  # == Render Partial Section
  # The block is rendererd within the context of the view, so you can
  # easily render a partial rather than build content in ruby.
  #
  #   section "Recent Posts" do
  #     render 'recent_posts' # => this will render /app/views/admin/dashboard/_recent_posts.html.erb
  #   end
  
  # == Section Ordering
  # The dashboard sections are ordered by a given priority from top left to
  # bottom right. The default priority is 10. By giving a section numerically lower
  # priority it will be sorted higher. For example:
  #
  #   section "Recent Posts", :priority => 10
  #   section "Recent User", :priority => 1
  #
  # Will render the "Recent Users" then the "Recent Posts" sections on the dashboard.

end

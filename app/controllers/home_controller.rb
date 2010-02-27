class HomeController < ApplicationController
  current_tab :home
  def index
  @show_sidebar = 1
  end

end

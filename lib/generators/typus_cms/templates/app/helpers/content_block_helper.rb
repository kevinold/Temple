module ContentBlockHelper

  #
  #  <%= block :footer %>
  #
  def block(name)
    ContentBlock.find_by_block(name.to_s).content
  rescue
    "<p>Unconfigured <strong>#{name.to_s.humanize}</strong> block.</p>"
  end

end
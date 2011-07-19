module ApplicationHelper
  # Return title on per-page basis
  def title
    base_title = "Ruby on Rails Tutorial Application"
    if @title.nil?
      base_title
    else
      "#{base_title} | #{@title}"
    end
  end
end

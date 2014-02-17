module ApplicationHelper

  # return title based on page
  def title
    base_title = "Sample App for Rails Tuto"
    if @title.nil?
      base_title
    else
      "#{base_title} | #{@title}"
    end
  end

end

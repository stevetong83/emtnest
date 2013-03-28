module PagesHelper

  def page_title
    if @page_title.nil?
      "EMTNEST.COM"
    else
      "#{@page_title} | EMTNEST.COM"
    end
  end

end

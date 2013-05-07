class PagesController < ApplicationController

  def index
    @page_title = "Machine Embroidery Designs and Patterns"
    @products = Product.all
  end
end

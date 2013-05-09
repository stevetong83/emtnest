class PatternsController < ApplicationController
  
  def index
    @patterns = Pattern.all
  end

  def show
    @pattern = Pattern.find params[:id]
    @page_title = "#{@pattern.name} Embroidery Design Pattern"
  end

end

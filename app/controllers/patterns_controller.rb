class PatternsController < ApplicationController
  def index
    @patterns = Pattern.all
  end

  def new
    @pattern = Pattern.new
  end

  def create
    @pattern = Pattern.create params[:pattern]
    if @pattern.save
      redirect_to @pattern
    else
      render 'new'
    end
  end

  def show
    @pattern = Pattern.find params[:id]
    @page_title = "#{@pattern.name} Embroidery Design Pattern"
  end

  def edit
    @pattern = Pattern.find params[:id]
  end

  def update
    @pattern = Pattern.find params[:id]
    @pattern.update_attributes params[:pattern]
    if @pattern.save
      redirect_to @pattern, notice: "Pattern has been updated"
    else
      render 'edit'
    end
  end

  def destroy
    @pattern = Pattern.find params[:id]
    @pattern.destroy
    redirect_to root_path, notice: "Pattern has been deleted"
  end
end

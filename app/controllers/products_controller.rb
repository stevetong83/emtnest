class ProductsController < ApplicationController

  def index
    @products = Product.all
  end

  def show
    @product = Product.find params[:id]
    @page_title = "#{@product.title} Machine Embroidery Design Pattern"
  end
end

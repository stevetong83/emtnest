class ProductsController < ApplicationController

  def index
    @products = Product.all
  end

  def show
    @product = Product.find params[:id]
    @page_title = "#{@product.name} Embroidery Design Pattern"
  end
end

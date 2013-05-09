class CartsController < ApplicationController

  def index
    
  end

  def show
    @cart = current_cart
    @line_items = @cart.line_items.all
  end

  def destroy
    @cart = current_cart
    @cart.destroy
    redirect_to root_path, notice: "There are no items in your cart"
  end
end

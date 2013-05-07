class CartsController < ApplicationController

  def index
    
  end

  def show
    @cart = current_cart
    @line_items = @cart.line_items.all
  end

  def destroy

  end
end

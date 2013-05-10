class LineItemsController < ApplicationController

  def create
    @cart = current_cart
    product = Product.find params[:product_id]
    @line_item = @cart.line_items.build(product: product)
    if @line_item.save
      redirect_to :back, notice: "Product has been added to cart"
    else
      redirect_to :back, error: "Unable to add to cart"
    end
  end

  def update

  end

  def destroy

  end
end

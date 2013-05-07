class LineItemsController < ApplicationController

  def create
    @cart = current_cart
    product = Product.find params[:product_id]
    @line_item = @cart.line_items.build(product: product)
    if @line_item.save
      redirect_to :back, notice: "Line item created"
    else
      render :new
    end
  end

  def update

  end

  def destroy

  end
end

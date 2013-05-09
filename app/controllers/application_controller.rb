class ApplicationController < ActionController::Base
  protect_from_forgery

  before_filter :categories

  def categories
    @categories = Category.all
  end

  private

  def current_cart
    binding.pry
    Cart.find(session[:cart_id])
    rescue ActiveRecord::RecordNotFound
    cart = Cart.create
    session[:cart_id] = cart.id
    cart
  end
end

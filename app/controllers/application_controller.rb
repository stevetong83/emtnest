class ApplicationController < ActionController::Base
  protect_from_forgery

  before_filter :categories
  helper_method :current_cart

  def categories
    @categories = Category.all
  end

  private

  def current_cart
    if session[:cart_id].nil?
      cart = Cart.create
      session[:cart_id] = cart.id
    else
      Cart.find(session[:cart_id])
    end
  end
end

class StoreController < ApplicationController
  skip_before_action :authorize
  include CurrentCart
  before_action :set_cart
  def increment_count
  session[:counter] ||= 0
  session[:counter] += 1
  end
  # session[:counter] += 1
  #     if session[:counter] > 5
  #       return session[:counter]
  #     end
  #   end

  def index
    @products = Product.order(:title)
    @count = increment_count
    #@count_message = "You've been here #{@count} times" if session [:counter] > 5
  end
end

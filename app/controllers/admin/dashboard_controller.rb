

class Admin::DashboardController < ApplicationController
  
  http_basic_authenticate_with name: ENV['HTTP_USER'], password: ENV['HTTP_PASS']

  def show
    @productCount = Product.count
    @categoryCount = Category.count
  end
end

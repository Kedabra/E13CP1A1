class SalesController < ApplicationController
  def new
    @sale = Sales.new
  end

end

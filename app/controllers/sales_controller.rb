class SalesController < ApplicationController

  def index
    @sales = Sale.all
  end


  def new
    @sale = Sale.new
  end

  def create
    @sale = Sale.new(params[:sale])
  end

end

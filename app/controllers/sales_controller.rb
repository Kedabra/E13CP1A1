class SalesController < ApplicationController

  def index
    @sales = Sale.all
  end


  def new
    @sale = Sale.new
  end

  def create
    @sale = Sale.new(sales_params)
    @sale.save
    redirect_to sales_new_path
  end

  def sales_params
    params.require(:sale).permit(:detail, :category, :value, :discount, :tax)
  end


end

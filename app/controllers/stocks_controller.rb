class StocksController < ApplicationController
  def search

    if params[:stock].present?
      render json: @stock
      @stock = Stock.new_from_lookup(params[:stock])
      if @stock
        render json: @stock
      else flash[:danger] = 'You have entered an invalid symbol'
      redirect_to portfolio_path
      end
    else flash[:danger]= 'You have entered empty stock'

      redirect_to portfolio_path
      end


end
  end
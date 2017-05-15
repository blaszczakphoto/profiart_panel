class PortfolioController < ApplicationController
  def show
  	page = PortfolioPresenter.new(Portfolio.find(params[:id]))
  	render layout: 'portfolio_layout', locals: { page: page }
  end
end

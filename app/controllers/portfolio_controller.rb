class PortfolioController < ApplicationController
  def show
  	page = PortfolioPresenter.new(Portfolio.find(1))
  	render layout: 'portfolio_layout', locals: { page: page }
  end
end

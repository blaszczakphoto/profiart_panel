class SavePortfolioInWordpress
  include ActionController

  def initialize(portfolio)
    @portfolio = portfolio
  end

  def call
    portfolio_wordpress = portfolio.portfolio_wordpress
    portfolio_wordpress.post_content = rendered_html
    portfolio_wordpress.save
  end

  private

  def rendered_html
    ApplicationController.render("portfolio/show", layout: false, locals: { page: page })
  end

  def page
    PortfolioPresenter.new(portfolio)
  end

  attr_reader :portfolio
end

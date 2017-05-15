class SavePortfolioInWordpress
  include ActionController

  def initialize(portfolio)
    @portfolio = portfolio
  end

  def call
    portfolio_wordpress = PortfolioWordpress.find(portfolio_wordpress_id)
    portfolio_wordpress.post_content = rendered_html
    portfolio_wordpress.save
  end

  private

  def portfolio_wordpress_id
    portfolio.wordpress_post_name.split("#").last.to_i
  end

  def rendered_html
    ApplicationController.render("portfolio/show", layout: false, locals: { page: page })
  end

  def page
    PortfolioPresenter.new(portfolio)
  end

  attr_reader :portfolio
end

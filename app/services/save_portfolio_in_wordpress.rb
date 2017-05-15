class SavePortfolioInWordpress
  include ActionController

  def initialize(portfolio)
    @portfolio = portfolio
  end

  def call
    page = PortfolioPresenter.new(portfolio)
    rendered_html = ApplicationController.render('portfolio/show', layout: false, locals: {page: page})
    portfolio_wordpress = PortfolioWordpress.find(2416)
    portfolio_wordpress.post_content = rendered_html
    portfolio_wordpress.save
  end

  def portfolio
    @portfolio
  end
end
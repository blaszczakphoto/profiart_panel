class PortfolioPresenter
  def initialize(portfolio)
    @portfolio = portfolio
  end

  def screens
    (1..5).to_a.map { |i| @portfolio.send("screen#{i}") }.reject(&:empty?)
  end

  def technologies_images
    @portfolio.technologies.pluck(:thumb)
  end

  delegate :scope, :client, :thumb, :url, :image, :logo, to: :@portfolio
end

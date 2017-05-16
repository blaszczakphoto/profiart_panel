class AddPortfolioWordpressIdToPortfolios < ActiveRecord::Migration[5.0]
  def change
    add_column :portfolios, :portfolio_wordpress_id, :integer
  end
end

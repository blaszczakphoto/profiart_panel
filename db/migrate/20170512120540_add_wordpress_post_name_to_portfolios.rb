class AddWordpressPostNameToPortfolios < ActiveRecord::Migration[5.0]
  def change
    add_column :portfolios, :wordpress_post_name, :string
  end
end

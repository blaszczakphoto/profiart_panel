class AddWordpressPostIdToPortfolio < ActiveRecord::Migration[5.0]
  def change
    add_column :portfolios, :wordpress_post_id, :integer
  end
end

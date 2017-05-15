class PortfolioWordpress < ApplicationRecord
	establish_connection(:other_db)
	self.table_name = 'profiart_wp5.wp_posts'

  def self.all_portfolio
    PortfolioWordpress.where(post_type: 'portfolio').order(:ID)
  end

  def self.names_with_id
    self.all_portfolio.map do |post|
      "#{post.post_title} - ID##{post.id}"
    end
  end
end

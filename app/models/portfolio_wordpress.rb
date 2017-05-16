class PortfolioWordpress < ApplicationRecord
  establish_connection(:other_db)
  self.table_name = "profiart_wp5.wp_posts"
  default_scope { where(post_type: "portfolio").order(:ID) }

  def self.names_with_id
    all.map do |post|
      "#{post.post_title} - ID##{post.id}"
    end
  end
end

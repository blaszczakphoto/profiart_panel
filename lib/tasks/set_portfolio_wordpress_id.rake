task :set_portfolio_wordpress_id => :environment do
  Portfolio.all.each do |portfolio|
    next if portfolio.portfolio_wordpress_id
    extracted_id = portfolio.wordpress_post_name.split("#").last.to_i
    portfolio.portfolio_wordpress_id = extracted_id
    portfolio.save
  end
end

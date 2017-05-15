class Technology < ApplicationRecord
  has_many :portfolios, through: :portfolio_technologies
end

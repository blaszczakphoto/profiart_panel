class Portfolio < ApplicationRecord
  has_many :portfolio_technologies
  has_many :technologies, through: :portfolio_technologies
end

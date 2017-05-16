class Portfolio < ApplicationRecord
  has_many :portfolio_technologies
  has_many :technologies, through: :portfolio_technologies
  belongs_to :portfolio_wordpress, optional: true
end

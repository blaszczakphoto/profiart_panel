class AddFieldsToPortfolios < ActiveRecord::Migration[5.0]
  def change
    add_column :portfolios, :screen2, :string
    add_column :portfolios, :screen3, :string
    add_column :portfolios, :screen4, :string
    add_column :portfolios, :screen5, :string
  end
end

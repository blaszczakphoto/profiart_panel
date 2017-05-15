class CreatePortfolioTechnologies < ActiveRecord::Migration[5.0]
  def change
    create_table :portfolio_technologies do |t|
      t.integer :portfolio_id
      t.integer :technology_id

      t.timestamps
    end
    add_index :portfolio_technologies, :portfolio_id
    add_index :portfolio_technologies, :technology_id
  end
end

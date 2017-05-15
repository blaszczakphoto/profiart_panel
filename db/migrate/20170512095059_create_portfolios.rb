class CreatePortfolios < ActiveRecord::Migration[5.0]
  def change
    create_table :portfolios do |t|
      t.text :client
      t.text :scope
      t.string :url
      t.string :image
      t.string :thumb
      t.string :screen1

      t.timestamps
    end
  end
end

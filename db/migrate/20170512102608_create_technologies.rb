class CreateTechnologies < ActiveRecord::Migration[5.0]
  def change
    create_table :technologies do |t|
      t.string :thumb
      t.string :name

      t.timestamps
    end
  end
end

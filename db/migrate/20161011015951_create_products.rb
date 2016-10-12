class CreateProducts < ActiveRecord::Migration
  def change
    create_table :products do |t|
      t.timestamps null: false
      t.string :name
      t.text :description
      t.integer :price
    end
  end
end

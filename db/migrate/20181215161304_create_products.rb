class CreateProducts < ActiveRecord::Migration[5.1]
  def change
    create_table :products do |t|
      t.string :name
      t.text :description
      t.integer :quantity
      t.float :price
      t.boolean :available

      t.timestamps
    end
  end
end

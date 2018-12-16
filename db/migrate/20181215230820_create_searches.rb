class CreateSearches < ActiveRecord::Migration[5.1]
  def change
    create_table :searches do |t|
      t.string :keywords
      t.string :category
      t.float :min_price
      t.float :max_price
      t.integer :isbn
      t.boolean :available

      t.timestamps
    end
  end
end

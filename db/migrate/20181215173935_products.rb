class Products < ActiveRecord::Migration[5.1]
  def change
    add_column :products, :category_id, :integer

  end
end

class Users < ActiveRecord::Migration[5.1]
  def change
    add_column :users, :adm, :boolean
  end
end

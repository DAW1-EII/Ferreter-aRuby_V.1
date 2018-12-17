class CreateCurrentusers < ActiveRecord::Migration[5.1]
  def change
    create_table :currentusers do |t|
      t.string :name
      t.string :email
      t.string :password
      t.string :dni
      t.string :telephone
      t.string :dir
      t.string :number
      t.string :cp

      t.timestamps
    end
  end
end

class CreateRestaurants < ActiveRecord::Migration
  def change
    create_table :restaurants do |t|
      t.string :name
      t.text :adress
      t.integer :phonenumber
      t.string :category

      t.timestamps null: false
    end
  end
end

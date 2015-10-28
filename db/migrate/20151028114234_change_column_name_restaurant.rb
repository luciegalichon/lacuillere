class ChangeColumnNameRestaurant < ActiveRecord::Migration
  def change
    rename_column :restaurants, :adress, :address
    rename_column :restaurants, :phonenumber, :phone_number
    change_column :restaurants, :phonenumber, :string
  end
end

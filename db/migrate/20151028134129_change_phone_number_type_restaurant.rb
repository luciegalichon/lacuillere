class ChangePhoneNumberTypeRestaurant < ActiveRecord::Migration
  def self.up
    change_table :restaurants do |t|
      t.change :phone_number, :string
    end
  end

  def self.down
    change_table :restaurants do |t|
      t.change :phone_number, :integer
    end
  end
end

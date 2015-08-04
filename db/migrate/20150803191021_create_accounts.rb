class CreateAccounts < ActiveRecord::Migration
  def change
    create_table :accounts do |table|
      table.string :social_network
      table.string :username
      table.integer :user_id
    end
  end
end

class CreateUsers < ActiveRecord::Migration
  def change
    create_table :users do |table|
      table.string :username
      table.string :email
      table.string :password_hash

    end
  end
end

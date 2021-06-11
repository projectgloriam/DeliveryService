class AddUsernameAndPasswordToDrivers < ActiveRecord::Migration
  def up
  	add_column :drivers, :username, :string
  	add_column :drivers, :password_digest, :string
  end
  def down
  	remove_column :drivers, :username
  	remove_column :drivers, :password_digest
  end
end

class CreateUsers < ActiveRecord::Migration
  def change
    create_table :users do |t|
      t.string :username
      t.string :password_digest
      t.string :user_email
      t.string :user_phone
      t.string :user_address

      t.timestamps null: false
    end
  end
end

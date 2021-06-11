class CreateDrivers < ActiveRecord::Migration
  def change
    create_table :drivers do |t|
      t.string :driver_name
      t.string :driver_email
      t.string :driver_phone
      t.string :driver_address
      t.string :driver_location

      t.timestamps null: false
    end
  end
end

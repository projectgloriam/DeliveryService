class CreateRequests < ActiveRecord::Migration
  def change
    create_table :requests do |t|
      t.references :customer, index: true, foreign_key: true
      t.references :driver, index: true, foreign_key: true
      t.string :location_name
      t.string :map_location

      t.timestamps null: false
    end
  end
end

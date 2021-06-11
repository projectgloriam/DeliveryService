class CreateLists < ActiveRecord::Migration
  def change
    create_table :lists do |t|
      t.string :item
      t.string :price
      t.string :quantity
      t.string :total_price
      t.references :request, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end

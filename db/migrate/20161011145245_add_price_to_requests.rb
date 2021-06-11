class AddPriceToRequests < ActiveRecord::Migration
  def up
  	add_column :requests, :price, :string
  end

  def down
  	remove_column :requests, :price
  end
end

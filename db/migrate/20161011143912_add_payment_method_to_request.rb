class AddPaymentMethodToRequest < ActiveRecord::Migration
  def up
  	add_reference :requests, :payment, index: true
  end

  def down
  	remove reference :requests, :payment
  end
end

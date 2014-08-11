class AddClientRefToSaleProcess < ActiveRecord::Migration
  def change
  	add_reference(:sale_processes, :client)

  end
end

class RemoveSaleProcessRefToClient < ActiveRecord::Migration
  def change
  	remove_reference(:clients, :sale_process, index: true)
  end
end

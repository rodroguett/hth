class AddSaleProcessRefToSale < ActiveRecord::Migration
  def change
    add_reference :sales, :sale_process, index: true
  end
end

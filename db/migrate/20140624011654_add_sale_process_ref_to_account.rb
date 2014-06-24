class AddSaleProcessRefToAccount < ActiveRecord::Migration
  def change
    add_reference :accounts, :sale_process, index: true
  end
end

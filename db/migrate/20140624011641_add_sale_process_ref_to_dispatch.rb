class AddSaleProcessRefToDispatch < ActiveRecord::Migration
  def change
    add_reference :dispatches, :sale_process, index: true
  end
end

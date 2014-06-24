class AddSaleProcessRefToBilling < ActiveRecord::Migration
  def change
    add_reference :billings, :sale_process, index: true
  end
end

class ChangePurchaseOrderTypeInSales < ActiveRecord::Migration
  def change
  	change_column :sales, :purchase_order, :text
  end
end

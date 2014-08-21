class ChangePriceTypeInSales < ActiveRecord::Migration
  def change
  	change_column :sales, :price, :text
  end
end

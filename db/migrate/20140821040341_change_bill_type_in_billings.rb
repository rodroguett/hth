class ChangeBillTypeInBillings < ActiveRecord::Migration
  def change
  	change_column :billings, :bill, :text
  end
end

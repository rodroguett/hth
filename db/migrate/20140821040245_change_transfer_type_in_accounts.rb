class ChangeTransferTypeInAccounts < ActiveRecord::Migration
  def change
  	change_column :accounts, :transfer, :text
  end
end

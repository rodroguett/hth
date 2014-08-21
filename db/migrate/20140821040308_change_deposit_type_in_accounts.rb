class ChangeDepositTypeInAccounts < ActiveRecord::Migration
  def change
  	change_column :accounts, :deposit, :text
  end
end

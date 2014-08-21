class ChangeCheckTypeInAccounts < ActiveRecord::Migration
  def change
  	change_column :accounts, :check, :text
  end
end

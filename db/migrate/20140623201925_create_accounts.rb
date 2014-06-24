class CreateAccounts < ActiveRecord::Migration
  def change
    create_table :accounts do |t|
      t.integer :transfer
      t.integer :check
      t.integer :deposit

      t.timestamps
    end
  end
end

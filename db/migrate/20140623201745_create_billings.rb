class CreateBillings < ActiveRecord::Migration
  def change
    create_table :billings do |t|
      t.integer :bill

      t.timestamps
    end
  end
end

class CreateSales < ActiveRecord::Migration
  def change
    create_table :sales do |t|
      t.integer :price
      t.integer :sale_note
      t.integer :purchase_order

      t.timestamps
    end
  end
end

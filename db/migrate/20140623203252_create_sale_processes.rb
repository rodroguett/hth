class CreateSaleProcesses < ActiveRecord::Migration
  def change
    create_table :sale_processes do |t|
      t.string :name
      t.text :description

      t.timestamps
    end
  end
end

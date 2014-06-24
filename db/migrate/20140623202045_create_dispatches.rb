class CreateDispatches < ActiveRecord::Migration
  def change
    create_table :dispatches do |t|
      t.integer :electronic_dispatch
      t.integer :dispatch_ticket
      t.datetime :dispatch_date

      t.timestamps
    end
  end
end

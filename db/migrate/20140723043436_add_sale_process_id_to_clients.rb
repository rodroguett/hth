class AddSaleProcessIdToClients < ActiveRecord::Migration
  def change
    add_column :clients, :sale_process_id, :integer
  end
end

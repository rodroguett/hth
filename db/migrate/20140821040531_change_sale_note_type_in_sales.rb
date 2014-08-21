class ChangeSaleNoteTypeInSales < ActiveRecord::Migration
  def change
  	change_column :sales, :sale_note, :text
  end
end

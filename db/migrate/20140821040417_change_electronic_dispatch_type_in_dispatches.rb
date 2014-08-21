class ChangeElectronicDispatchTypeInDispatches < ActiveRecord::Migration
  def change
  	change_column :dispatches, :electronic_dispatch, :text
  end
end

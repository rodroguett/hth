class ChangeDispatchTicketTypeInDispatches < ActiveRecord::Migration
  def change
  	change_column :dispatches, :dispatch_ticket, :text
  end
end

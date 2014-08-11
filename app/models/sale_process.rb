class SaleProcess < ActiveRecord::Base
	has_one :account
	has_one :dispatch
	has_one :billing
	has_one :sale
	

	belongs_to :client

	#accepts_nested_attributes_for :client
end

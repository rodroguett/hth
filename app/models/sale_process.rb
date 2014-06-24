class SaleProcess < ActiveRecord::Base
	has_one :account
	has_one :dispatch
	has_one :billing
	has_one :sale
end

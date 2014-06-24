class SaleProcess < ActiveRecord::Base
	has_one :sale
	has_one :dispatch
	has_one :account
	has_one :billing
end

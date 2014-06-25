class Account < ActiveRecord::Base
	
	attr_accessor :sale_process_id
	belongs_to :sale_process

	def getAccountId
    	return 1
  	end
end

class User < ApplicationRecord
	has_many :addresses
	belongs_to :team

	def addresses_attrubutes=(addresses_attributes)
		addresses_attributes.each do |address_attributes|
			self.addresses.build(address_attributes)
		end
	end
end

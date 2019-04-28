class User < ApplicationRecord
	has_many :addresses
	belongs_to :team

	def addresses_attrubutes=(addresses_attributes)
		addresses_attributes.each do |i, address_attributes|
			self.addresses.build(address_attributes)
		end
	end

	def team_attributes=(team_attributes)
		self.team = Team.where(:name => team_attributes[:name]).first_or_create do
			t.hometown = team_attributes[:hometown]
		end

		
		#team_attributes = {
		#:name => "New Team Name",
		#:hometown => "NYC"
	#}
		#create a team by name and set attributes
end

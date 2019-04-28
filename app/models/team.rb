class Team < ApplicationRecord
	has_many :users

	def team_name=(name)
		#find that team by name
	end

	def new_team_attributes=(team_attributes)
		#team_attributes = {
		:name => "New Team Name",
		:hometown => "NYC"
	}
		#create a team by name and set attributes
	end
end

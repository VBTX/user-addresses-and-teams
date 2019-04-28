class UsersController < ApplicationController
	def new
		@user = User.new
		@user.addresses.build(:address_type => "Home")
		@user.addresses.build(:address_type => "Business")
	end

	def create
		@user = User.new(user_params)
		if @user.save
			redirect_to @user #/users/#{@user.id}
		else
			render :new
		end
	end

	private

	def user_params
		params.require(:user).permit(:email, addresses_attributes => [:street_1, :street_2, :address_type])
	end
end

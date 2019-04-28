require 'test_helper'

class UserTest < ActiveSupport::TestCase
  test 'address_attributes=' do
  	params = {
  		:user => {
  			:email => "the@email.com"
  			:addresses_attributes => [
  				{:street_1 => "Address 1 Street", :address_type => "Home"},
  				{:street_1 => "Address 2 Street", :address_type => "Business"}
  			]
  		}
  	}

  	user = User.new(params[:user])
  	user.save

  	assert_equal user.addresses.size, 2
  	assert_equal user.addresses.first.street_1, "Address 1 Street"
  	assert_equal user.addresses.first.address_type, "Home"

  	assert_equal user.addresses.last.street_1, "Address 2 Street"
  	assert_equal user.addresses.last.address_type, "home"
  	
  end
end

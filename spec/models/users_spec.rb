require 'spec_helper'

describe User do
	it 'create a valid user' do
		user = User.new name: "Fabio Calheiros", 
						email: "fabio.calheiros@gmail.com", 
						age: 28
		user.save.should be_true
	end
end
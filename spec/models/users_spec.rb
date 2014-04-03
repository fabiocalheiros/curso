require 'spec_helper'

describe User do
	it 'create a valid user' do
		user = User.new name: "Fabio Calheiros", 
						email: "fabio.calheiros@gmail.com", 
						age: 28
		user.save.should be_true
	end

	it 'fail to create an user with blank name' do
		user = User.new email: "fabio.calheiros@gmail.com", age: 28
		user.save.should be_false
	end

	it 'fail to create an user with blank email' do
		user = User.new name: "Fabio Calheiros", age: 28
		user.save.should be_false
	end

	it 'creates a user with gender value FEMALE gender' do
		user = User.new name: "Candice",
						email: "candinha@ig.com.br",
						gender: User::FEMALE
		user.save.should be_true
	end
end
require 'spec_helper'

describe User do
	it 'create a valid user' do
		user = User.new name: "Fabio Calheiros", 
						email: "fabio.calheiros@gmail.com", 
						age: 28, 
						gender: User::MALE
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

	context 'when age >= 18' do
		it 'creates an user with gender' do
			user = User.new name: "nome", email: "email@email.com.br", age: 19, gender: User::MALE
			user.save.should be_true
		end

		it 'does not create with blank gender' do
			user = User.new name: "nome", email: "email@email.com.br", age: 19
			user.save.should be_false
		end
	end

	context 'when age < 18' do
		it 'creates an user with gender' do
			user = User.new name: "nome", email: "email@email.com.br", age: 17, gender: User::MALE
			user.save.should be_true
		end

		it 'create with blank gender' do
			user = User.new name: "nome", email: "email@email.com.br", age: 17
			user.save.should be_true
		end
	end

	it 'does not create two users with same email' do
		user1 = User.create name: "Fabio Calheiros",
						   email: "fabio.calheiros@gmail.com",
						   age: 17
		user2 = User.new name: "Outro Nome",
						 email: "fabio.calheiros@gmail.com",
						 age: 17
		user2.save.should be_false
	end
end

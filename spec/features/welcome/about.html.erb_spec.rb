require 'spec_helper'

describe '.about', type: :feature do 
	it 'Acess About page e mostra o endereço' do
		visit about_path
		page.should have_content("Rua Maranhão, 1283")
	end
end
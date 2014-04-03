require 'spec_helper'

describe '.index', type: :feature do 
	it 'Acess Home Page' do
		visit root_path
		page.should have_content("Fábio Calheiros")
	end

	it 'acess public pages' do
		visit root_path
		page.should have_content("Fábio Calheiros")

		click_link "Sobre"
		page.should have_content("Rua Maranhão, 1283")
	end
end

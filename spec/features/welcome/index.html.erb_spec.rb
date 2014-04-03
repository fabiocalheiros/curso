require 'spec_helper'

describe '.index', type: :feature do 
	it 'Acess Home Page' do
		visit root_path
		page.should have_content("Fábio Calheiros")
	end
end
class WelcomeController < ApplicationController

	def index
		@name = "Fábio Calheiros"
	end

	def black
		@text = "Esta é uma página com novo layout"
		render layout: 'application_black'
	end
end
class WelcomeController < ApplicationController

	# metodo contrutor da página inicial
	def index
		@name = "Fábio Calheiros"
	end

	# metodo black aponta para um novo layout
	# o layout deve estar dentro da pasta welcome para que funcione
	def black
		@text = "Esta é uma página com novo layout"
		render layout: 'application_black'
	end
end
class WelcomeController < ApplicationController

	before_filter :authenticate_user!, except: [:index, :about]
		
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

	def about
		@address = "Rua Maranhão, 1283"
	end
end
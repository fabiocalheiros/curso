FirstApp::Application.routes.draw do

  # quando acessar a url principal vai para o controler welcome e chama a index
  root 'welcome#index'

  # pega o nome da url "black" e atribui a uma difinição no controller welcome
  get 'black', to: 'welcome#black'
  
  get '/about', to: 'welcome#about', as: :about

  # cria uma rota de biils dentro de usuarios
  resources :users do
  	resources :bills
  end
end
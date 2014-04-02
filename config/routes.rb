FirstApp::Application.routes.draw do

  # quando acessar a url principal vai para o controler welcome e chama a index
  root 'welcome#index'

  # pega o nome da url "black" e atribui a uma difinição no controller welcome
  get 'black', to: 'welcome#black'
  
end

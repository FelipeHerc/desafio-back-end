Rails.application.routes.draw do
  root 'cnab#index'

  get 'cnab/listar' => 'cnab#index'
  get 'cnab/adicionar' => 'cnab#cadastrar'
  get 'cnab/totais' => 'cnab#totais'
  post 'cnab/adicionar' => 'cnab#adicionar'
  
end

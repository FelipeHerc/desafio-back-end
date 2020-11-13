Rails.application.routes.draw do
  root 'cnab#index'
  resources :cnabs
end

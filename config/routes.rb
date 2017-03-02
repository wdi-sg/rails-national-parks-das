Rails.application.routes.draw do
  get 'home/index'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  # get 'parks'
  # get 'parks/1'

  resources :parks

  root 'home#index'


end

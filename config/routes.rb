Rails.application.routes.draw do
  get 'home/index'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  get 'parks/index'
  get 'parks/:id', to: 'parks#show'

  resources :parks
  root 'home#index'

end

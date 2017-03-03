Rails.application.routes.draw do
  get 'parks/new'

  get 'parks/create'

  get 'parks/edit'

  get 'parks/update'

  get 'parks/destroy'

  get 'home/index'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  get 'parks/index'
  get 'parks/:id', to: 'parks#show'

  resources :parks
  root 'home#index'

end

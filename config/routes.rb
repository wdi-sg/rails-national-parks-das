Rails.application.routes.draw do

  resources :parks
  root 'home#index'

end

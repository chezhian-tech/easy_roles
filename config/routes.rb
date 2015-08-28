EasyRoles::Engine.routes.draw do

  resources :roles
  resources :permissions

  root to: 'roles#index'

end

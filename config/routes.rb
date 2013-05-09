Emtnest::Application.routes.draw do

  ActiveAdmin.routes(self)

  devise_for :admin_users, ActiveAdmin::Devise.config

  devise_for :users

  root to: 'pages#index'

  resources :carts

  resources :products do
    resources :patterns
    resources :photos
  end

end

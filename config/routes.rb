Emtnest::Application.routes.draw do

  root to: 'pages#index'

  ActiveAdmin.routes(self)

  devise_for :admin_users, ActiveAdmin::Devise.config

  devise_for :users

  resources :users, only: :index

  resources :carts

  resources :products do
    resources :patterns
    resources :photos
  end

end

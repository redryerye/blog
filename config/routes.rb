Rails.application.routes.draw do


  devise_for :admin_users, ActiveAdmin::Devise.config
  ActiveAdmin.routes(self)
  devise_for :users
  resources :posts

  root 'posts#index'

  match 'about', to: 'about#index', via: 'get'
  match 'contact', to: 'contact#index', via: 'get'
  # match 'contact/confirm', to 'contact#confirm', via: 'post'
  match 'contact/complete', to: 'contact#complete', via: 'post'

end

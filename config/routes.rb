Rails.application.routes.draw do


  # devise_for :admin_users, ActiveAdmin::Devise.config
  devise_for :users

  resources :posts, param: :title


  root 'posts#index'

  # get '/posts/:titles' => 'posts#show'

  match 'about', to: 'about#index', via: 'get'

  # match 'post#show', to: 'post#:slug', via: 'get'

  match 'contact', to: 'contact#index', via: 'get'
  # match 'contact/confirm', to 'contact#confirm', via: 'post'
  match 'contact/complete', to: 'contact#complete', via: 'post'


end

Rails.application.routes.draw do
  resources :answer_grids
  resources :user_quests
  resources :quests

  get 'dashboard_empresa/index'
  devise_for :companies
  #devise_for :users
  resources :dashboard
  get 'static_pages/help'
  root :to => 'static_pages#home'
  devise_for :users, :controllers => { :omniauth_callbacks => "omniauth_callbacks" }

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end

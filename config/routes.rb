Rails.application.routes.draw do
  get 'dashboard_empresa/index'
  devise_for :companies
  #devise_for :users
  resources :dashboard
  get 'companies/edit' => 'companies#edit'
  get 'users/edit' => 'users#edit'
  get 'static_pages/help'
  root :to => 'static_pages#home'
  devise_for :users
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end

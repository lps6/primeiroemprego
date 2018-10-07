Rails.application.routes.draw do
  get 'static_pages/home'
  get "help" => 'StaticPages#help'
  get 'static_pages/help'
  root 'static_pages/home'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end

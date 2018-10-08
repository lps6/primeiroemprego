Rails.application.routes.draw do
  get 'static_page/home'
  get "help" => 'StaticPage#help'
  get 'static_page/help'
  root 'static_page/home'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end

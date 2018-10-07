Rails.application.routes.draw do
  get 'static_pages/home'
  get 'help' => 'StaticPages#help'
  root 'post#home'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end

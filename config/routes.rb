Rails.application.routes.draw do
  get 'home' => 'static_pages/home'
  get 'help' => 'static_pages/help'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end

class User::RegistrationsController < Devise::RegistrationsController
  layout "devise", only: [:edit]
end

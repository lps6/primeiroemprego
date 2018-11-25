class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable, :omniauthable



def update_with_password(params, *options)
current_password = params.delete(:current_password)

if params[:password].blank?
  params.delete(:password)
  params.delete(:password_confirmation) if params[:password_confirmation].blank?
end

result = if params[:password].blank? || valid_password?(current_password)
  update_attributes(params, *options)
else
  self.assign_attributes(params, *options)
  self.valid?
  self.errors.add(:current_password, current_password.blank? ? :blank : :invalid)
  false
end

clean_up_passwords
result
end

  def self.connect_to_linkedin(auth, signed_in_resource=nil) 
    user = User.where(:provider => auth.provider, :uid => auth.uid).first
    if user
      return user 
    else
      registered_user = User.where(:email => auth.info.email).first
    if registered_user 
      return registered_user 
    else 
      user = User.create(name:auth.info.first_name, provider:auth.provider, uid:auth.uid, email:auth.info.email, password:Devise.friendly_token[0,20], 
      )
    
    end 
    end 
  end
  
         
end

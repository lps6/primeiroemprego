class Company < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  has_many :quests
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
end

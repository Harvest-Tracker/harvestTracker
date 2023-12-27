class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
    :recoverable, :rememberable, :validatable
  # devise :omniauthable, omniauth_providers

  # def self.from_omniauth(auth)
  #   find_or_create_by(provider: auth.provider, uid: auth.uid) do |user|
  #     user.first_name = auth.info.name   # assuming the user model has a name
  #     user.password = Devise.friendly_token[0, 20]
  #   end
  # end

  def full_name
    first_name + " " + last_name
  end
end

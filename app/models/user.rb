class User < ApplicationRecord
  validates :first_name, presence: true
  validates :last_name, presence: true
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

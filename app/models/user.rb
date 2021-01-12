class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

  has_one_attached :avatar

  validates_format_of :password, with: /([0-9].*[a-zA-Z]|[a-zA-Z].*[0-9])/
  with_options presence: true do
    validates :name
    validates :password_confirmation
  end
end

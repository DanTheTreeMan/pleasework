# Model for creating new users
class User < ApplicationRecord
  # Name Validation
  validates :name, presence: true

  # Password Validation
  validates :password, presence: true
  validates :password, confirmation: true
  validates :password_confirmation, presence: true
  validates :password, length: { in: 6..20 }

  # Address Validation
  validates :address, presence: true

  # Email Validation
  validates :email, uniqueness: true
  validates :email, presence: true

  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable
end

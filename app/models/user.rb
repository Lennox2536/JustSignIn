class User < ApplicationRecord
  validates :name, presence: true
  validates :email, format: { with: /\A([^@\s]+)@((?:[-a-z0-9]+\.)+[a-z]{2,})\z/i, on: :create }

  has_many :messages,
           dependent: :delete_all
  has_many :rooms, through: :messages

  has_secure_password
end

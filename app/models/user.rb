class User < ActiveRecord::Base

  has_secure_password

  validates :password, length: { minimum: 6 }
  validates :email, uniqueness: true
  validates :name, presence: true
  validates :email, presence: true


end
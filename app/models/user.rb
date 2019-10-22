class User < ActiveRecord::Base

  def self.authenticate_with_credentials(email, password)
    user = User.find_by(email: email.strip.downcase)
    if user && user.authenticate(password)
      user
    else 
      nil
    end

  end

  has_secure_password

  validates :password, length: { minimum: 6 }
  validates :email, uniqueness: {case_sensitive: false}
  validates :name, presence: true
  validates :email, presence: true


end
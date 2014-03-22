class User < ActiveRecord::Base
  before_save :ensure_authentication_token
  # Include default devise modules. Others available are:
  # :token_authenticatable, :confirmable,
  # :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable, :validatable, :confirmable, :token_authenticatable

  attr_accessible :name, :email, :password, :password_confirmation,

  def skip_confirmation!
    self.confirmed_at = Time.now
  end

#  attr_accessible :email, :name, :role
  
#  has_many :products
end

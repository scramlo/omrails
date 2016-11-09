class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :rememberable, :trackable, :validatable

  validate :password_complexity

  def password_complexity
    if password.present? and not password.match(/^(?=.*[a-z])(?=.*[A-Z])(?=.*\d). /)
      errors.add :password, "must include at least one lowercase letter, one uppercase letter, and one digit"
    end
  end

  has_many :prayers
  has_many :comments
  
end

class User < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable

  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable

  validates :nome, presence: true

  def user_params
    params.require(:user).permit(:nome, :email, :password, :password_confirmation, :remember_me)
  end    
end

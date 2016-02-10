class User < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable

  validates :name, presence: true

  def user_params
    params.require(:user).permit(:nome, :email, :password, :password_confirmation, :remember_me, :phone, :cpf)
  end    
end

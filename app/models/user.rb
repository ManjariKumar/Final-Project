class User < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable

  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable

   # ROLES = %w[admin moderator author banned]

  def authorized?
  # @user = User.find_by(id: current_user)
    if (current_user.role == "admin" || current_user.role == "owner")
    end
 end

end

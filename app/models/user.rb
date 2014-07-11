class User < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable

  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable

   ROLES = %w[admin owner parent]

  # def authorized?
  #   @user = User.find_by(id: current_user)
  #   if (current_user.role == "admin" || current_user.role == "owner")
  #   end
  # end
 
def roles=(roles)
	self.roles_mask = (roles & ROLES).map {|r| 2**ROLES.index(r)}.sum
end

def roles
	ROLES.reject {|r| ((roles_mask || 0) & 2**ROLES.index(r)).zero?}
end



  def role?(role)
	  roles.include? role.to_s	
  end
end

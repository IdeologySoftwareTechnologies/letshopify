class Admin < ActiveRecord::Base
  # Include default devise modules. Others available are:
    
  devise :database_authenticatable, 
         :rememberable, :trackable, :validatable,:confirmable, :lockable, :timeoutable
end

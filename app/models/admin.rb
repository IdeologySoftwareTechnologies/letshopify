class Admin < ActiveRecord::Base
  # Include default devise modules. Others available are:

  mount_uploader :admin_avatar,AdminAvatarUploader

  devise :database_authenticatable, :registerable, :recoverable,
         :rememberable, :trackable, :validatable, :lockable, :timeoutable

end

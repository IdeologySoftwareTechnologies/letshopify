class AddDetailsToAdmins < ActiveRecord::Migration
  def change
    add_column :admins, :admin_avatar, :string
  end
end

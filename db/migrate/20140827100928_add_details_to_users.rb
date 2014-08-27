class AddDetailsToUsers < ActiveRecord::Migration
  def change
  	add_column :users, :first_name, :string
    add_column :users, :last_name, :string
    add_column :users, :telephone, :integer
    add_column :users, :fax, :integer
    add_column :users, :company, :string
    add_column :users, :address1, :string
    add_column :users, :address2, :string
    add_column :users, :city, :string
    add_column :users, :post_code, :integer
    add_column :users, :country, :string
    add_column :users, :state, :string
    add_column :users, :user_avatar, :string
  end
end

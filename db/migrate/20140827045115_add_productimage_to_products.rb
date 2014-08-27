class AddProductimageToProducts < ActiveRecord::Migration
  def change
    add_column :products, :productimage, :string
  end
end

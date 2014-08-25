class AddParentIdToProductcategory < ActiveRecord::Migration
  def change
    add_column :productcategories, :parent_id, :integer
  end
end

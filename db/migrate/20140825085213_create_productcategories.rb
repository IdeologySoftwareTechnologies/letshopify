class CreateProductcategories < ActiveRecord::Migration
  def change
    create_table :productcategories do |t|
      t.string :name

      t.timestamps
    end
  end
end

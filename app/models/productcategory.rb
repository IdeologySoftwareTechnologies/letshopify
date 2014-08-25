class Productcategory < ActiveRecord::Base
	acts_as_tree order: "name", dependent: :destroy
end

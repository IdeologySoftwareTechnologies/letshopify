class Product < ActiveRecord::Base
  belongs_to :productcategory
   mount_uploader :productimage, ProductimageUploader
end

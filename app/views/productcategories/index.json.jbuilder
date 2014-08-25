json.array!(@productcategories) do |productcategory|
  json.extract! productcategory, :id, :name
  json.url productcategory_url(productcategory, format: :json)
end

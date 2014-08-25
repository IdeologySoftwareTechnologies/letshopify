json.array!(@products) do |product|
  json.extract! product, :id, :name, :description, :price, :productcategory_id
  json.url product_url(product, format: :json)
end

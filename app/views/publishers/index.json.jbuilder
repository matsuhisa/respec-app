json.array!(@publishers) do |publisher|
  json.extract! publisher, :id, :name, :description, :prefecture_id
  json.url publisher_url(publisher, format: :json)
end

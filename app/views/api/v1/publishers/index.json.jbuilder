json.array!(@publishers) do |publisher|
  json.extract! publisher, :id, :name, :address, :city, :state, :zip, :phone, :url
  json.url publisher_url(publisher, format: :json)
end

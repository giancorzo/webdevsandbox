json.array!(@addresses) do |address|
  json.extract! address, :id, :description
  json.url address_url(address, format: :json)
end

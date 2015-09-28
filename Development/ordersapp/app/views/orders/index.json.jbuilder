json.array!(@orders) do |order|
  json.extract! order, :id, :description, :total_cost
  json.url order_url(order, format: :json)
end

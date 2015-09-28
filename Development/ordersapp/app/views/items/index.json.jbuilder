json.array!(@items) do |item|
  json.extract! item, :id, :order_id, :product_id, :quantity, :unit_cost
  json.url item_url(item, format: :json)
end

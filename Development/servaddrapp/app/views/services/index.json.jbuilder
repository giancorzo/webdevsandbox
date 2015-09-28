json.array!(@services) do |service|
  json.extract! service, :id, :reserved_at, :scheduled_to
  json.url service_url(service, format: :json)
end

json.array!(@services) do |service|
  json.extract! service, :id, :name, :description, :photo, :tourist_site_id
  json.url service_url(service, format: :json)
end

json.array!(@app_services) do |app_service|
  json.extract! app_service, :id, :name, :description
  json.url app_service_url(app_service, format: :json)
end

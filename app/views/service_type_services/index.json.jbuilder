json.array!(@service_type_services) do |service_type_service|
  json.extract! service_type_service, :id, :service_types_id, :services_id
  json.url service_type_service_url(service_type_service, format: :json)
end

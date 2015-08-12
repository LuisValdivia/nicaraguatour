json.array!(@tourist_site_app_services) do |tourist_site_app_service|
  json.extract! tourist_site_app_service, :id, :tourist_site_id, :app_service_id
  json.url tourist_site_app_service_url(tourist_site_app_service, format: :json)
end

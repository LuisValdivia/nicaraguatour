json.array!(@tourist_site_external_resources) do |tourist_site_external_resource|
  json.extract! tourist_site_external_resource, :id, :tourist_site_id, :external_resource_id
  json.url tourist_site_external_resource_url(tourist_site_external_resource, format: :json)
end

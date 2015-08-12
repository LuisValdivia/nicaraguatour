json.array!(@tourist_sites) do |tourist_site|
  json.extract! tourist_site, :id, :name, :description, :address, :concat, :owner, :photo, :specific_location_id
  json.url tourist_site_url(tourist_site, format: :json)
end

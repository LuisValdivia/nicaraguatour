json.array!(@tourist_site_categories) do |tourist_site_category|
  json.extract! tourist_site_category, :id, :tourist_site_id, :category_id
  json.url tourist_site_category_url(tourist_site_category, format: :json)
end

json.array!(@countries) do |country|
  json.extract! country, :id, :name, :description, :location, :photo
  json.url country_url(country, format: :json)
end

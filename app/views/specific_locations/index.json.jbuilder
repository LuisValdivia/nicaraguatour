json.array!(@specific_locations) do |specific_location|
  json.extract! specific_location, :id, :name, :description, :location, :photo, :city_id, :area_type_id
  json.url specific_location_url(specific_location, format: :json)
end

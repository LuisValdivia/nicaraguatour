json.array!(@departments) do |department|
  json.extract! department, :id, :name, :description, :location, :photo, :countries_id
  json.url department_url(department, format: :json)
end

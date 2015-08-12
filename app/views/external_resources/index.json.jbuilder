json.array!(@external_resources) do |external_resource|
  json.extract! external_resource, :id, :name, :description, :photo
  json.url external_resource_url(external_resource, format: :json)
end

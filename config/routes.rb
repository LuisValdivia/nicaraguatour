Rails.application.routes.draw do
  resources :tourist_site_app_services
  resources :tourist_site_external_resources
  resources :tourist_site_categories
  resources :service_type_services
  resources :services
  resources :tourist_sites
  resources :specific_locations
  resources :cities
  get '/cities/get_cities_by_department_id/:id', to: 'cities#get_cities_by_department_id'

  resources :departments
  get '/departments/get_department_by_id/:id', to: 'departments#get_department_by_id'

  resources :app_services
  resources :service_types
  resources :external_resources
  resources :categories
  resources :area_types
  resources :countries
end

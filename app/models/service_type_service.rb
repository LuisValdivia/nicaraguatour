class ServiceTypeService < ActiveRecord::Base
  belongs_to :service_types
  belongs_to :services
end

class TouristSiteExternalResource < ActiveRecord::Base
  belongs_to :tourist_site
  belongs_to :external_resource
end

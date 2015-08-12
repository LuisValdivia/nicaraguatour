class TouristSiteAppService < ActiveRecord::Base
  belongs_to :tourist_site
  belongs_to :app_service
end

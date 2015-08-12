class TouristSiteCategory < ActiveRecord::Base
  belongs_to :tourist_site
  belongs_to :category
end

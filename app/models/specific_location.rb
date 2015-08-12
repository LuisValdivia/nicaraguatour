class SpecificLocation < ActiveRecord::Base
  belongs_to :city
  belongs_to :area_type
end

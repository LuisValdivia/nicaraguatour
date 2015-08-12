class AddColumnsLongitudeLatitude < ActiveRecord::Migration
  def change
	add_column :countries , :longitude , :string
	add_column :countries , :latitude , :string

	add_column :departments , :longitude , :string
	add_column :departments , :latitude , :string

	add_column :cities , :longitude , :string
	add_column :cities , :latitude , :string

	add_column :specific_locations , :longitude , :string
	add_column :specific_locations , :latitude , :string

	add_column :tourist_sites , :longitude , :string
	add_column :tourist_sites , :latitude , :string
  end
end

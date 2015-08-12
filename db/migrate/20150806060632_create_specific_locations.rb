class CreateSpecificLocations < ActiveRecord::Migration
  def change
    create_table :specific_locations do |t|
      t.string :name
      t.string :description
      t.string :location
      t.string :photo
      t.belongs_to :city, index: true, foreign_key: true
      t.belongs_to :area_type, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end

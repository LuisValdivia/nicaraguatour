class CreateTouristSites < ActiveRecord::Migration
  def change
    create_table :tourist_sites do |t|
      t.string :name
      t.string :description
      t.string :address
      t.string :concat
      t.string :owner
      t.string :photo
      t.belongs_to :specific_location, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end

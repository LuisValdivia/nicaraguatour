class CreateTouristSiteExternalResources < ActiveRecord::Migration
  def change
    create_table :tourist_site_external_resources do |t|
      t.references :tourist_site, index: true, foreign_key: true
      t.references :external_resource, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end

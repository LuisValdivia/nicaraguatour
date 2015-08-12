class CreateTouristSiteAppServices < ActiveRecord::Migration
  def change
    create_table :tourist_site_app_services do |t|
      t.references :tourist_site, index: true, foreign_key: true
      t.references :app_service, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end

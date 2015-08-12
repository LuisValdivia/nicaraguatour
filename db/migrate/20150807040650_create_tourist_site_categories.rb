class CreateTouristSiteCategories < ActiveRecord::Migration
  def change
    create_table :tourist_site_categories do |t|
      t.references :tourist_site, index: true, foreign_key: true
      t.references :category, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end

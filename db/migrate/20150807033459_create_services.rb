class CreateServices < ActiveRecord::Migration
  def change
    create_table :services do |t|
      t.string :name
      t.string :description
      t.string :photo
      t.belongs_to :tourist_site, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end

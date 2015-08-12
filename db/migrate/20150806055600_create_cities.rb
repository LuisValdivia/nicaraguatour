class CreateCities < ActiveRecord::Migration
  def change
    create_table :cities do |t|
      t.string :name
      t.string :description
      t.string :location
      t.string :photo
      t.belongs_to :department, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end

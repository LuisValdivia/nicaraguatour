class CreateCountries < ActiveRecord::Migration
  def change
    create_table :countries do |t|
      t.string :name
      t.string :description
      t.string :location
      t.string :photo

      t.timestamps null: false
    end
  end
end

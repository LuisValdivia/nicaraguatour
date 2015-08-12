class CreateDepartments < ActiveRecord::Migration
  def change
    create_table :departments do |t|
      t.string :name
      t.string :description
      t.string :location
      t.string :photo
      t.belongs_to :country, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end

class CreateExternalResources < ActiveRecord::Migration
  def change
    create_table :external_resources do |t|
      t.string :name
      t.string :description
      t.string :photo

      t.timestamps null: false
    end
  end
end

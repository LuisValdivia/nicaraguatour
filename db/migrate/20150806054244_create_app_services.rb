class CreateAppServices < ActiveRecord::Migration
  def change
    create_table :app_services do |t|
      t.string :name
      t.string :description

      t.timestamps null: false
    end
  end
end

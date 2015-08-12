class CreateServiceTypeServices < ActiveRecord::Migration
  def change
    create_table :service_type_services do |t|
      t.references :service_type, index: true, foreign_key: true
      t.references :service, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end

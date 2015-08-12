class ChangeNameColumnConcatByContact < ActiveRecord::Migration
  def change
  	rename_column :tourist_sites , :concat , :contact
  end
end

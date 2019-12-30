class FixColumnName < ActiveRecord::Migration[5.2]
  def change
  	rename_column :comments , :type, :resource_type
  	rename_column :comments, :parent, :parent_id
  	rename_column :comments, :activityid, :resource_id
  end
end

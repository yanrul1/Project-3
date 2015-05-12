class ChangelocationnameForLocation < ActiveRecord::Migration
  def change
  	rename_column :locations,:locationname,:locationID
  end
end

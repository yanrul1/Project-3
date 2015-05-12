class CreateConditions < ActiveRecord::Migration
  def change
    create_table :conditions do |t|
      t.string :cond

      t.timestamps null: false
    end
  end
end

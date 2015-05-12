class CreateObservations < ActiveRecord::Migration
  def change
    create_table :observations do |t|
      t.datetime :updatetime
      t.date :updateDate
      t.string :recordtype

      t.timestamps null: false
    end
  end
end

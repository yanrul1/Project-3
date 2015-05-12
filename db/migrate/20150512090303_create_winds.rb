class CreateWinds < ActiveRecord::Migration
  def change
    create_table :winds do |t|
      t.float :windspeed
      t.string :winddirectionString
      t.integer :winddirectionDegree

      t.timestamps null: false
    end
  end
end

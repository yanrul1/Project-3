class CreatePrecipitations < ActiveRecord::Migration
  def change
    create_table :precipitations do |t|
      t.float :precip

      t.timestamps null: false
    end
  end
end

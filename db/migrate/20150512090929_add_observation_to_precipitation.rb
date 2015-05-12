class AddObservationToPrecipitation < ActiveRecord::Migration
  def change
    add_reference :precipitations, :observation, index: true
    add_foreign_key :precipitations, :observations
  end
end

class AddObservationToCondition < ActiveRecord::Migration
  def change
    add_reference :conditions, :observation, index: true
    add_foreign_key :conditions, :observations
  end
end

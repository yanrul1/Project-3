class Observation < ActiveRecord::Base
	belongs_to :location
	has_one :condition
	has_one :precipitation
	has_one :wind
	has_one :temperature
end

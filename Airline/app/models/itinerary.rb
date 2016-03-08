class Itinerary < ActiveRecord::Base
	has_many :schedules
	has_many :aeroplanes, through: :schedules

	has_many :pilots, through: :schedules
	
end

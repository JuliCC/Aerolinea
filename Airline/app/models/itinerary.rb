class Itinerary < ActiveRecord::Base
	has_many :schedules
	has_many :aeroplanes, through: :schedules

end

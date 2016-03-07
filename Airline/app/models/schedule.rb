class Schedule < ActiveRecord::Base
	belongs_to :aeroplane
	belongs_to :itinerary
	belongs_to :pilot
end

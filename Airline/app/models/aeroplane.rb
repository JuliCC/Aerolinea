class Aeroplane < ActiveRecord::Base
	has_many :schedules
	has_many :itineraries, through: :schedules

	
	has_many :pilots, through: :schedules


end

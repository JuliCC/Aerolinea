class Aeroplane < ActiveRecord::Base
	has_many :schedules
	has_many :itineraries, through: :schedule

	has_many :schedules
	has_many :pilots, through: :schedule


end

class HomeController < ApplicationController
	def index
		@aeroplanes = Aeroplane.all
		@itineraries = Itinerary.all
		@pilots = Pilot.all
	end
end

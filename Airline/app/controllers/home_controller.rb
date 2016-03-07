class HomeController < ApplicationController
	def index
		@aeroplanes = Aeroplane.all
		@itineraries = Itinerary.all
		@pilots = Pilots.all
end

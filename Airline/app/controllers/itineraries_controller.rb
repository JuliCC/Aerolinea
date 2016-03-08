class ItinerariesController < ApplicationController
	def index
		@itineraries = Itinerary.all
	end

	def new
		@itinerary = Itinerary.new
	end

	def edit
		@itinerary = Itinerary.find(params[:id])
	end

	def show
        @itinerary = Itinerary.find(params[:id])
        @itinerary_new = Itinerary.new
    end

  def create
        @itinerary = Itinerary.new(itinerary_params)
        @itinerary.save
        redirect_to itineraries_path
    end

  def update
        @itinerary = Itinerary.find(params[:id])
        @itinerary.update(itinerary_params)
        redirect_to itineraries_path
    end

  def destroy
        @itinerary = Itinerary.find(params[:id])
        @itinerary.destroy
        redirect_to itineraries_path
    end

  def itinerary_params
        params.require(:itinerary).permit(:ciudad_salida, :ciudad_destino, :hora_salida, :hora_llegada, {aeroplane_ids: []}, {pilot_ids: []})
    end
end

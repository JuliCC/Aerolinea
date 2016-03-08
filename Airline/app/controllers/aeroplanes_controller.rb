class AeroplanesController < ApplicationController

	def index
		@aeroplanes = Aeroplane.all
	end

	def new
		@aeroplane = Aeroplane.new
	end

	def edit
		@aeroplane = Aeroplane.find(params[:id])
	end

	def show
        @aeroplane = Aeroplane.find(params[:id])
        @aeroplane_new = Aeroplane.new
    end

    def create
        @aeroplane = Aeroplane.new(aeroplane_params)
        @aeroplane.save
        redirect_to aeroplanes_path
    end

    def update
        @aeroplane = Aeroplane.find(params[:id])
        @aeroplane.update(aeroplane_params)
        redirect_to aeroplanes_path
    end

    def destroy
        @aeroplane = Aeroplane.find(params[:id])
        @aeroplane.destroy
        redirect_to aeroplanes_path
    end

    def aeroplane_params
        params.require(:aeroplane).permit(:codigo, {pilot_ids: []})
    end

end

 def itinerary_params
        params.require(:itinerary).permit(:ciudad_salida, :ciudad_destino, :hora_salida, :hora_llegada, {pilot_ids: []})
    end

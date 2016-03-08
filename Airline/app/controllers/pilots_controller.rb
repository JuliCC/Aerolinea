class PilotsController < ApplicationController

	def index
		@pilots = Pilot.all
	end

	def new
		@pilot = Pilot.new
	end

	def edit
		@pilot = Pilot.find(params[:id])
	end

	def show
    @pilot = Pilot.find(params[:id])
    @pilot_new = Pilot.new
  end

  def create
 		@pilot = Pilot.new(pilot_params)
    @pilot.save
    redirect_to pilots_path
  end

  def update
    @pilot = Pilot.find(params[:id])
    @pilot.update(pilot_params)
    redirect_to pilots_path
    end

  def destroy
    @pilot = Pilot.find(params[:id])
    @pilot.destroy
    redirect_to pilots_path
    end

  def pilot_params
    params.require(:pilot).permit(:nombre, :identificacion, {aeroplane_ids: []})
    end
end

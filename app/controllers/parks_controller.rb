class ParksController < ApplicationController
  def show
    @parks = ParkFacade.parks_in_state(params[:state])
    @total_parks_found = ParkFacade.total_parks_in_state(params[:state])
  end
end

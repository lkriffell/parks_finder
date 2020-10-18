class ParkFacade
  def self.parks_in_state(state_code)
    parks_data = ParkService.parks_in_state(state_code)
    @parks = parks_data['data'].map do |park_data|
      Park.new(park_data)
    end
  end

  def self.total_parks_in_state(state_code)
    parks_data = ParkService.parks_in_state(state_code)
    @total_parks_found = parks_data['total']
  end
end

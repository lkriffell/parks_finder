class Park
  attr_reader :full_name, :description, :direction_info, :park_hours

  def initialize(park_data)
    @full_name = park_data['fullName']
    @description = park_data['description']
    @direction_info = park_data['directionsInfo']
    @park_hours = park_data['operatingHours'].first['standardHours']
  end
end

class ParkService
  def self.conn
    Faraday.new("https://developer.nps.gov/api/v1/")
  end

  def self.parks_in_state(state_code)
    response = conn.get("parks?stateCode=#{state_code}&api_key=#{ENV['PARK_API_KEY']}")

    JSON.parse(response.body)
  end
end

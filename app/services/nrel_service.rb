class NRELService

  def conn
    Faraday.new(url:"https://developer.nrel.gov/api/alt-fuel-stations/v1/nearest.json") do |faraday|
      faraday.headers["X-API-KEY"] = ENV["NREL_API_KEY"]
      faraday.adapter Faraday.default_adapter
    end
  end

  def get_json(url)
    response = conn.get(url)
    JSON.parse(response.body, symbolize_names: true)
  end

  def get_stations(zip_code)
    location = zip_code
    limit = 15
    fuel_type = "LPG,ELEC"
    status = "E"
    access = "public"
    radius = "5"
    url = "?location=#{location}&fuel_type=#{fuel_type}&status=#{status}&access=#{access}&radius=#{radius}"

    get_json(url)
  end
end

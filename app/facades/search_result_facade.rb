class SearchResultFacade

  attr_reader :zip_code
  
  def initialize(attributes)
    @zip_code = attributes[:zip]
  end

  def stations_count
    stations.count
  end

  def stations
    response = service.find_stations(@zip)
    response.map do |member_data|
      Member.new(member_data)
    end
  end

  def service
    NRELService.new
  end
end

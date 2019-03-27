require 'rails_helper'

RSpec.describe 'NRELService' do
  it 'exists' do
    service = NRELService.new

    expect(service).to be_a(NRELService)
  end

  context "instance methods" do
    it "gets list of stations based on a zip code" do

      result = NRELService.new.get_stations("80206")[:fuel_stations]
      first_station = result.first

      expect(first_station[:station_name]).to eq("PUBLIC STATIONS")
      expect(first_station[:street_address]).to eq("2951-2985 E 3rd Ave")
      expect(first_station[:distance]).to eq(0.62888)
      expect(first_station[:access_days_time]).to eq("24 hours daily")
      expect(first_station[:fuel_type_code]).to eq("ELEC")

    end
  end
end

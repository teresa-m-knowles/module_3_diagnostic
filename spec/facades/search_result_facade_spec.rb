require 'rails_helper'

describe SearchResultFacade do
  it 'exists'do
    zip = '80206'
    result_facade = SearchResultFacade.new(zip)

    expect(result_facade).to be_a(SearchResultFacade)
  end

  describe "instance methods" do
    describe "#stations_count" do
      it "returns the count of members" do
        zip = '80206'
        result_facade = SearchResultFacade.new(zip)

        expect(result_facade.stations_count).to eq(15)
      end
    end

  end
end

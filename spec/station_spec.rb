require 'station'

describe Station do

  describe "station functions" do
    station = Station.new("bank", 1)
    it "gets the name of a station" do
    expect(subject.name).to eq("bank")
    end

    it "gets the zone of the station" do
    expect(subject.zone).to eq(1)
    end
  end
end

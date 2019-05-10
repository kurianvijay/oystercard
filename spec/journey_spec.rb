require 'journey'

describe Journey do

  it "gets us a new journey with entry_station" do
    station = double("entry_station")
    journey = Journey.new(station)
    expect(journey.entry_station).to eq(station)
  end

  it "finishes a journey with exit_station" do
    entry_station = double("entry_station")
    exit_station = double("exit_station")
    journey = Journey.new(entry_station)
    journey.exit(exit_station)
    expect(journey.exit_station).to eq(exit_station)
  end

end

require_relative "../rover"

RSpec.describe Rover do
	it "starts in a initial position" do
		rover = Rover.new

		result = rover.broadcast_position

		expect(result).to eq([0, 0])
	end
end
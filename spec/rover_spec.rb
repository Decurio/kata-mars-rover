require_relative "../rover"

RSpec.describe Rover do
	it "starts in a initial position" do
		rover = Rover.new

		result = rover.broadcast_position

		expect(result).to eq([0, 0])
	end

	it "starts with a initial direction" do
		rover = Rover.new

		result = rover.broadcast_orientation

		expect(result).to eq(:north)
	end

	it "move fowards" do
		rover = Rover.new

		rover.execute(:f)
		result = rover.broadcast_position

		expect(result).to eq([1, 0])
	end
end
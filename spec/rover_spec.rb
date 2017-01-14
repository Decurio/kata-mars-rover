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

	xit "move fowards" do
		rover = Rover.new

		rover.execute(:f)
		result = rover.broadcast_position

		expect(result).to eq([0, 1])
	end

	xit "move backwards" do
		rover = Rover.new

		rover.execute(:b)
		result = rover.broadcast_position

		expect(result).to eq([0, -1])
	end

	xit "rotates to the right" do
		rover = Rover.new

		rover.execute(:r)
		rover.execute(:f)
		result = rover.broadcast_position

		expect(result).to eq([1, 0])
	end

	xit "rotates to te left" do
		rover = Rover.new

		rover.execute(:l)
		rover.execute(:f)
		result = rover.broadcast_position

		expect(result).to be([-1, 0])
	end
end
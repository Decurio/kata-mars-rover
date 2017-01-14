class Rover
	def initialize
		@position = [0, 0]
		@orientation = :north
	end

	def broadcast_position
		@position
	end

	def broadcast_orientation
		@orientation
	end

	def execute(arg)
		@position = [1, 0]
	end
end

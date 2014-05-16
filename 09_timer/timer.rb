class Timer
	attr_accessor :seconds
	attr_reader :time_string

	def initialize
		@seconds = 0
	end

	def time_string
		s = @seconds % 60
		m = (@seconds % 3600) / 60
		h = @seconds / 3600
		@time_string = padded(h) + ":" + padded(m) + ":" + padded(s)
	end

	def padded(to_pad)
		to_pad.to_s.rjust(2, "0")
	end
end

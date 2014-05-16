class Temperature
	def initialize(opts={})
		if opts[:c] == nil 
			@temperature = opts[:f]
		else
			@temperature = ctof(opts[:c])
		end
	end

	def in_fahrenheit
		@temperature
	end

	def in_celsius
		ftoc(@temperature)
	end

	def self.from_celsius(deg)
		self.new(:c => deg)
	end

	def self.from_fahrenheit(deg)
		self.new(:f => deg)
	end

	def ftoc (deg)
		(deg.to_f - 32.00) * (5.00/9.00)
	end


	def ctof (deg)
		deg.to_f * (9.00/5.00) + 32.00
	end
end

class Celsius < Temperature

	def initialize (deg)
		super(:c => deg)
	end
end

class Fahrenheit < Temperature

	def initialize (deg)
		super(:f => deg)
	end
end




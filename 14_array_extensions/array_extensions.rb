class Array
	
	def sum
		self.reduce(0, :+)
	end

	def square
		self.collect { |number| number * number }
	end

	def square!
		self.collect! { |number| number * number }
	end
end

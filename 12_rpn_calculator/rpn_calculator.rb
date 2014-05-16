class RPNCalculator
	
	def initialize
		@operation = []
	end

	def plus
		first_number = self.pop
		second_number = self.pop
		@operation.push << second_number + first_number
	end

	def minus
		first_number = self.pop
		second_number = self.pop
		@operation << second_number - first_number
	end

	def times
		first_number = self.pop
		second_number = self.pop
		@operation << second_number * first_number
	end

	def divide
		first_number = self.pop
		second_number = self.pop
		@operation << (second_number.to_f / first_number.to_f)
	end

	def push(num_or_op)
		@operation << num_or_op
	end


	def pop
		if @operation.length < 1
			raise "calculator is empty"
		else
			@operation.pop
		end
	end


	def value
		@operation.last
	end

	def tokens(op_string)
		token_array = []
		op_string.split(" ").each do |num_or_op|
			if ["+", "-", "*", "/"].include? num_or_op 
				token_array << num_or_op.to_sym 
			else
				token_array << num_or_op.to_f
			end
		end
		token_array
	end

	def evaluate(op_string)
		token_array = tokens(op_string)
		token_array.each do |token|
			if token == :+
				plus
			elsif
				token == :-
				minus
			elsif 
				token == :*
				times
			elsif 
				token == :/
				divide
			else
				self.push(token)
			end
		end
		value
	end
end
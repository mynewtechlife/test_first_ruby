def add(x, y)
	x + y
end

def subtract(x, y)
	x - y
end

def sum(array)
	if array != [] 
		array.each.reduce(:+)
	else
		0
	end
end

def multiply(*nums)
	nums.each.reduce(1, :*)
end

def power(x, y)
	x ** y
end

def factorial(x)
	return 1 if x <= 1
	return x * factorial(x - 1)
end











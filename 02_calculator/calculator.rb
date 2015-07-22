def add(a,b)
	a + b
end

def subtract(a,b)
	a - b
end

def sum(a)
	total = 0.0
	if a.length > 0
		a.each do |n|
			total += n
		end
	end
	total
end

def multiply(*a)
	# inject(1) to make result start at 1, otherwise we'd always be multiplying by zero!
	a.inject(1) { |result, num| result * num}
end

def power(a,b)
	a**b
end

def factorial(a)
	result = 1
	1.upto(a) { |n| result *= n }
	result
end
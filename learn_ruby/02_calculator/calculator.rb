def add(num1, num2)
	num1 + num2
end


def subtract(num1, num2)
	num1 - num2
end


def sum(num_array)
	total = 0
	num_array.each{|num| total += num}
	total
end


def multiply(num_array)
	total = 1
	num_array.each{|num| total *= num}
	total
end


def power(base, exp)
	total = 1

	while exp > 0
		total *= base
		exp -= 1
	end

	total
end


def factorial(num)
	return 1 if num == 0

	total = 1

	while num > 0
		total *= num
		num -= 1
	end

	total
end
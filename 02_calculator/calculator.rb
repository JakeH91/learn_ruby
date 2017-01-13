#write your code here
def add(a, b)
	a + b
end

def subtract(a, b)
	a - b
end

def sum(array)
	total = 0
	i = 0
	while i < array.length do
		total = total + array[i]
		i = i + 1
	end
	total
end

def multiply(a, b=nil)
	total = 0
	if a.instance_of? Array
		total = a[0]
		i = 1
		while i < a.length do
			total = total * a[i]
			i = i + 1
		end
	else
		total = a * b
	end
	total
end

def power(a, b)
	total = 1
	while b > 0
		total = total * a
		b = b - 1
	end
	total
end

def factorial(a)
	total = 1
	if a != 0 && a != 1
		while a > 1
			total = total * a
			a = a - 1
		end
	end
	total
end
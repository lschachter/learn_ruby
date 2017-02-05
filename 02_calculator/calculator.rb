#write your code here


def add(num1, num2)
	num1 + num2
end

def subtract(num1, num2)
	num1 - num2
end

def sum(arr)
	total = 0
	arr.each {|num| total +=num}
	total
end

def multiply(arr)
	total = 1
	arr.each{|num| total = total * num}
	total
end

def power(num, exp)
	num**exp
end

def factorial(fac)
	total = 1
	1.upto(fac) {|num| total = total * num}
	total
end
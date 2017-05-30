#write your code here
def add x, y
	x + y
end


def subtract x, y
	x - y
end


def sum array
	total = 0
	array.each do |ele|
		total += ele
	end
	total
end


def multiply x, y
	x * y
end


def power x, y
	x ** y
end

def factorial num
	sum = 1
	while (num > 1)
		sum *= num
		num -=1
	end
	sum
end
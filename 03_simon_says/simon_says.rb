#write your code here
def echo string
	string
end

def shout string
	string.upcase
end

def repeat string, i = 2
	([string] * i).join(' ')
end

def start_of_word word, num
	word[0,num]
end

def first_word word
	word.split.first
end

def titleize word
	temp_word = word.split(' ')
	temp_word.each do |part|
		part.capitalize!
		if part == "And" or part == "The" or part == "Over"
			part.downcase!
		end
	end
	if temp_word.first == "the" or temp_word.first == "and" or temp_word.first == "over"
		temp_word.first.capitalize!
	end
	word = temp_word.join(' ')
end
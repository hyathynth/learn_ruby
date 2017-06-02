#write your code here

def translate words
	words = words.split(' ')
	temp_words = []
	words.each do |word|
		vowel = ['a', 'e', 'i', 'o', 'u', 'A', 'E', 'I', 'O', 'U']
		if vowel.include? (word[0])
			word = word
		else 
			while (!vowel.include? (word[0]))
				if word[0] == 's' and word[1] =='c' and word[2] == 'h'
					word = word[3, word.length] + "sch"
				elsif word[0] == 'q' and word[1] =='u'
					word = word[2, word.length] + "qu"
				else
					temp = word[0]
					word = word[1, word.length] + temp
				end
			end
			
		end
		if word =~ /[A-Z]/
			word = word.downcase.capitalize
		end
		word += "ay"
		temp_words.push(word)
	end
	words = temp_words.join(' ')
end
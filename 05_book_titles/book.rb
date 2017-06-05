class Book
	attr_reader :title

	def title= (name)
		new_name = name.split(" ")
		exception = ["and", "do", "the", "a", "an", "in", "of"]

		new_name.each do |word|
			if !exception.include? word
				word.capitalize!
			end
		end
		if new_name.first == "the"
			new_name.first.capitalize!
		end
		@title = new_name.join(" ")
		
	end
end


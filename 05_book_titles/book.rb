def titleize(sentence)
	senArr = sentence.split
	senArr[0] = senArr[0].capitalize
	i = 1
	while i < senArr.length
		if senArr[i] != "and" && senArr[i] != "in" && senArr[i] != "the" && senArr[i] != "over" && senArr[i] != "of" && senArr[i] != "an" && senArr[i] != "a"
			senArr[i] = senArr[i].capitalize
		end
		i = i + 1
	end
	final = senArr.join(" ")
	final
end

class Book
# write your code here
	attr_reader :title
	def title= (newTitle)
		@title = titleize(newTitle)
	end
end
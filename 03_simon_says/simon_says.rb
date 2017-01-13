#write your code here
def echo(word)
	word
end

def shout(word)
	word.upcase
end

def repeat(word, num=2)
	total = word
	while num > 1 do
		total = total + " " + word
		num = num - 1
	end
	total
end

def start_of_word(word, num)
	i = 0
	short = ""
	while i < num
		short = short + word[i]
		i = i + 1
	end
	short
end

def first_word(sentence)
	senArr = sentence.split
	senArr[0]
end

def titleize(sentence)
	senArr = sentence.split
	senArr[0] = senArr[0].capitalize
	i = 1
	while i < senArr.length
		if senArr[i] != "and" && senArr[i] != "in" && senArr[i] != "the" && senArr[i] != "over" && senArr[i] != "of"
			senArr[i] = senArr[i].capitalize
		end
		i = i + 1
	end
	final = senArr.join(" ")
	final
end

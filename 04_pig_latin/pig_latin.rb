#write your code here
def translate(phrase)
	phraseArray = phrase.split
	i = 0
	while i < phraseArray.length
		if phraseArray[i][0] == "a" || phraseArray[i][0] == "e" || phraseArray[i][0] == "i" || phraseArray[i][0] == "o" || phraseArray[i][0] == "u"
			phraseArray[i] = phraseArray[i] + "ay"
		else
			wordArray = phraseArray[i].split(//)
			first = ""
			last = ""
			j = 0
			while wordArray[j] != "a" && wordArray[j] != "e" && wordArray[j] != "i" && wordArray[j] != "o" && wordArray[j] != "u"
				first = first + wordArray[j]
				j = j + 1
			end
			while j < wordArray.length
				last = last + wordArray[j]
				j = j + 1
			end
			if first[first.length - 1] == "q"
				first = first + last[0]
				last = last.split(//)
				last.shift
				last = last.join
			end
			phraseArray[i] = last + first + "ay"
		end
		i = i + 1
	end
	final = phraseArray.join(" ")
	final
end
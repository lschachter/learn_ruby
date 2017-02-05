#write your code here

def echo(phrase)
	phrase
end

def shout(phrase)
	phrase.upcase
end

def repeat(phrase, reps =2)
	((phrase+ " ")*reps).rstrip
end

def start_of_word(phrase, section = 1)
	phrase[0...section]
end

def first_word(phrase)
	phrase.split.first
end

def titleize(phrase)
	little_words =["and","the","it","as","to","over"]
	words = phrase.split
	words[0].capitalize!
	words.each {|word| word.capitalize! unless little_words.include? word}
	words.join(" ")
end
#write your code here
def translate(phrase)
	words = phrase.split
	words.map! {|word| translate_word word}
	words.join " "
end

def translate_word(word)
	vowels ="aeiou"
	ender = "ay"
	cap = word[0] == word[0].capitalize
	word.downcase!
	
	if vowels.include? word[0]
		word = word<<ender
	else
		first_vowel =0
		first_vowel += 1 until vowels.include? word[first_vowel]
		first_vowel += 1 if word[first_vowel-1] == "q"
		word = word[first_vowel..-1]<<word[0...first_vowel]<<ender
	end
	word.capitalize! if cap
	word
end
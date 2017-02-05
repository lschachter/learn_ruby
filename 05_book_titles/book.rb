class Book
# write your code here
	attr_accessor :title

	def initialize(title="")
		@title = title
	end

	def title=(name)
		little_words =["and","the","it","as","to","over","in","of","a","an"]
		words = name.split
		words[0].capitalize!
		words.each {|word| word.capitalize! unless little_words.include? word}
		@title = words.join(" ")
	end
end

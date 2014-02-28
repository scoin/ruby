class Book
@@smallwords = ["and", "in", "the", "of", "a", "an"]

attr_reader :title

def title=(title)
@title = title.split(' ').map.with_index { |word, idx| 
	if ((idx != 0) && (@@smallwords.include?(word)))
		word
	else
		word.capitalize
	end}.join(' ') 

end

end

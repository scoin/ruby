#!/usr/bin/env ruby

def translate(str)
str = str.split(' ')
sentence = []
vowels = ['a','e','i','o','u']

str.each do |word|
pig = [] 
letters = word.split('')

vowelhit = false
vowel_idx = 0

	letters.each.with_index do |letter, idx|
		if (vowels.include?(letter)) && (vowelhit == false)

			vowelhit, vowel_idx = true, idx 

			if (letters[(vowel_idx - 1)] == 'q') && (letter == 'u')
				vowel_idx += 1 
				next
			end
		end

		pig << letter if vowelhit == true
		
	end
	(0..(vowel_idx - 1)).each do |i| pig << letters[i] end 

if pig[(pig.size - 1)] == 'a'
	pig << 'y' 
else
	pig << 'ay'
end

sentence << pig.join('')

end

sentence.join(" ")

end


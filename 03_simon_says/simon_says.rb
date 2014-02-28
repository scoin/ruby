def echo(str)
str
end

def shout(str)
str.upcase
end

def repeat(str, num = 2)

string = []

num.times {|i| string << str }

string.join(' ')
end

def start_of_word(str, num = 1)

str = str.split('')
letters = []

num.times { |c| letters << str[c] }

letters.join('')

end

def first_word(str)
str.split(' ')[0]
end

def titleize(str)
smallwords = ['and', 'over', 'the', 'of' ]
str = str.split(' ')
capitalized = str.map.with_index { |word, i| (smallwords.include?(word) && (i != 0)) ? word : word.capitalize }
capitalized.join(' ')
end



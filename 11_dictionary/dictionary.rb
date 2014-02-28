##PLEASE NOTE - I had to switch '=>' to ' , ' in the spec file when it calls the add method. I cannot get it to properly add to the hash when it calls the method this way. It instead reads the whole thing as the key, and then assigns it a value of nil.


class Dictionary

attr_accessor :entries

def initialize 
@entries = {}
end

def add (key, value= nil)
@entries[key] = value
end

def keywords
@entries.keys.sort
end

def include? (word)
@entries.keys.include?(word)
end

def find (partial)
results = {}

@entries.each_pair do |key, value|
	results[key] = value if /#{partial}/.match(key.to_s)
end
results
end

def printable
@entries.map { |key| %Q{[#{key.first}] "#{key.last}"} }.sort.join("\n")
end


end

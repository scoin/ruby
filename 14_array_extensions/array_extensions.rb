class Array

def sum
total = self.inject(0) { |sum, int| sum + int }
end

def square
total = self.map { |int| int * int }
end

def square!
total = self.map! { |int| int * int }
end

end

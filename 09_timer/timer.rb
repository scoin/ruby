class Timer
attr_accessor :seconds

def initialize
@seconds = 0
end

def time_string
@time_string = padded(seconds)
end

def padded(seconds)

hours = seconds / 3600

minutes = (seconds / 60) % 60 

if seconds >= 60
second = seconds % 60 
else
second = seconds
end

time = [hours, minutes, second]
time_s = []

time.each do |elem|
time_s << 0 if elem < 10
time_s << elem
time_s << ":"
end

time_s.join('').chop

end

end

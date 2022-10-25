puts "-------- 1 --------"
# Unpredictable Weather, part 1

sun = ['visible', 'hidden'].sample

if sun == 'visible'
  p "The sun is so bright!"
end

puts "-------- 2 --------"
# Unpredictable Weather, part 2

unless sun == 'visible'
  p "the clouds are blocking the sun"
end

puts "-------- 3 --------"
# Unpredictable Weather, part 3

p "The sun is so bright!" if sun == 'visible'
p "the clouds are blocking the sun" unless sun == 'visible'

puts "-------- 4 --------"
# True or False

boolean = [true, false].sample

boolean = true ? (p "I'm true") : (p "I'm false")
boolean = true ? p("I'm true") : p("I'm false") # note that if write p "I'm true" or if write p ("I'm true") will return a syntax error... has to either be (p...) or p(...)

puts "-------- 5 --------"
# Truthy Number

number = 7 

if number
  puts "My favorite number is #{number}."
else 
  puts "I dont' have a favorite number"
end

# My favorite number is 7.

puts "-------- 6 --------"
# Stoplight, part 1 

stoplight = ['green', 'yellow', 'red'].sample

case stoplight 
when 'green'
  p 'Go!'
when 'yellow'
  p 'Slow down'
when 'red' # for this final when, could just write ... else
  p 'Stop'
end

puts "-------- 7 --------"
# Stoplight, part 2

if stoplight == 'green'
  p 'go'
elsif stoplight == 'yellow'
  p 'slow'
else 
  p 'stop'
end

puts "-------- 8 --------"
# Sleep Alert

status = ['awake', 'tired'].sample
p status 
variable = status == 'awake' ? 'Be productive' : 'Go to sleep'
puts variable 

# i chose to use ternaray for this, ex below from LS using if/else instead

alert = if status == 'awake'
          'Be productive'
else 
  'Go to sleep'
end

puts alert 

puts "-------- 9 --------"
# Cool Numbers

number = rand(10)
p number 

number == 5 ? (p '5 is a cool number') : (p'Other numbers are cool too')

puts "-------- 10 --------"
# Stoplight, part 3

case stoplight 
when 'green' then p 'go'
when 'yellow' then p 'slow'
else p 'stop'
end

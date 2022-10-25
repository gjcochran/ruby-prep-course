puts "------------ 1 --------------"
# Print Me, part 1

def print_me 
  puts "I'm printing within the method!"
end

print_me 

puts "------------ 2 --------------"
# Print Me, part 2

def print_me_2
  return "I'm printing within the method!" #return isn't necessary, as is implied
end
 
puts print_me 

puts "------------ 3 --------------"
# Greeting Through Methods, Part 1

def hello
  "Hello"
end

def world
  "World"
end

puts hello + " " + world # another option... puts "#{hello} #{world}"

puts "------------ 4 --------------"
# Greeting Through Methods, Part 2

def greet 
  hello + " " + world
end

puts greet 

puts "------------ 5 --------------"
# Make and Model

def car (param1, param2) # note that should make parameters/arguments more specific, ex make, model
  puts "#{param1} #{param2}" # if want the method to return this string, then need to write puts in the invocation below, bc if is within the method, will return nil...
end

car('Honda', 'Civic')

puts "------------ 6 --------------"
# Day or Night?

def time_of_day (boolean) # same as 5, this works but use a more specific argument, ex daylight
  if boolean 
    puts "It's daytime!"
  else 
    puts "It's nighttime!"
  end
end

daylight = [true, false].sample
time_of_day(daylight)

puts "------------ 7 --------------"
# Naming Animals

def dog(name)
  return name
end

def cat(name)
  return name
end

puts "The dog's name is #{dog('Spot')}"
puts "The cat's name is #{cat('Sparks')}"

puts "------------ 8 --------------"
# Name Not Found

def assign_name(name = 'Bob')
  name
end

puts assign_name('Kevin')
puts assign_name
puts assign_name('Kevin') == 'Kevin'
puts assign_name == 'Bob'

puts "------------ 9 --------------"
# Multiply the Sum

def add(num1, num2)
  num1 + num2 
end
def multiply(num1, num2)
  num1 * num2
end

puts add(2, 2)
puts add(5, 4)
puts multiply(add(2, 2), add(5, 4))

puts "------------ 10 --------------"
# Random Sentence

names = ['Dave', 'Sally', 'George', 'Jessica']
activities = ['walking', 'running', 'cycling']

def name i
  i.sample
end

def activity i 
  i.sample 
end

random_name = name(names)
random_activity = activity(activities)

def sentence (name, activity)
  "#{name} is #{activity}"
end

puts sentence(random_name, random_activity)


# Runaway loop

loop do 
  puts "Just keep printing..."
  break
end

# Loopception

loop do 
    puts 'this is the outer loop'
  
  loop do 
    puts 'this is the inner loop'
    break
  end

  break
end

puts 'this is outside all loops'

# Control the loop

iterations = 1

loop do 
  puts "Number of iterations = #{iterations}"
  iterations += 1
  break if iterations > 5
end

# Loop on command

# loop do 
#   puts 'Should I stop looping?'
#   answer = gets.chomp
#   break if answer == 'yes'
# end

# Say Hello

say_hello = true

while say_hello
  5.times {puts 'Hello!'}
  say_hello = false
end

# my answer, worked, but there is another way to do it that does not fall back to the times method...

say_hello = true
count = 0

while say_hello
  puts 'Hello!'
  count +=1
  say_hello = false if count == 5
end

# Print While

numbers = []
count = 0

while count <  5
  numbers << rand(0..100)
  count += 1
end

puts numbers

# this worked, another way to do below...

numbers2 = []
while numbers2.size < 5
  numbers2 << rand(100)
end
puts numbers2

# Count Up

count = 10

until count == 0
  puts count
  count -= 1
end

count = 1
until count > 10
  puts count
  count += 1
end

# Print Until
puts " ------------------------"
numbers = [7, 9, 13, 25, 18]

numbers.each { |n| puts n }


until 
  puts numbers
  break
end

# my answer worked, but was not exactly what they were looking for, another option below

count = 0

until count == numbers.size
  puts numbers[count]
  count += 1
end

# That's odd

for i in 1..100
  puts i if i % 2 == 1 #the other way to write is ... # puts i if i.odd?
end

# Greet your friends

friends = ['Sarah', 'John', 'Hannah', 'Dave']

for name in friends
  puts "Hello, #{name}"
end

#---------------------LOOPS 2 -----------------
puts "-----------------------------"

# Even or Odd?

count = 1

loop do 
  if count.odd?
    puts "#{count} is odd"
  else
    puts "#{count} is even"
  end
  count += 1
  break if count > 5
end

# Catch the Number

loop do
  number = rand(100)
  puts number
  break if number <= 10
end

# my answer worked, but there is another way to do using .between?, ex below

loop do 
  number = rand(100)
  puts number
  if number.between?(0, 10)
    break
  end
end

# Conditional loop

process_the_loop = [true, false].sample

  if process_the_loop == false 
    puts "The loop wasn't processed"
  else  
    loop do
      puts "The loop was processed"
      break
    end
  end

# Get the Sum

# loop do
#   puts "What does 2 + 2 equal?"
#   answer = gets.chomp.to_i
#   if answer == 4
#     puts "That's correct!"
#     break
#   else
#     puts "Wrong answer.try again!"
# end

# Insert Numbers

# numbers = []

# loop do 
#   puts 'Enter any number:'
#   input = gets.chomp.to_i
#   numbers << input
#   if numbers.size == 5
#     break
# end
# puts numbers

# Empty the Array

names = ['Sally', 'Joe', 'Lisa', 'Henry']

loop do
  puts names.shift
  break if names.size == 0 # could also write ... break if names.empty?
end

# Stop Counting
i = 0
5.times do |index|
  puts i 
  i += 1
  break if i > 2
end

# i got the correct answer, but didnt use the parameter, therefore a simpler way to write, below...

5.times do |index|
  puts index
  break if index == 2
end

puts "----"
5.times do |index|
  puts index
  break if index < 7
end


# Only Even

number = 0

until number == 10
  number += 1
  next number if number.odd? # this worked but could have just written... next if number.odd?
  puts number
end

# First to Five
puts "-----------"

number_a = 0
number_b = 0

loop do 
  p number_a += rand(2)
  p number_b += rand(2)
  next if number_a <= 4 || number_b <= 4
  # break if number_a == 5 || number_b == 5
  puts "5 was reached!"
  break
end

# my answer was wrong, worked with break if but not with next if. correct answer used next unless [[unclear why != 5 with next if did not work...]]
puts "---------"
number_a = 0
number_b = 0
loop do 
  p number_a += rand(2)
  p number_b += rand(2)
  next unless number_a == 5 || number_b == 5
  puts "5 was reached!"
  break
end

# Greeting

def greeting(i)
  count = 0
  while count < i 
  puts 'Hello!'
  count += 1
  end
end

number_of_greetings = 2
p greeting(number_of_greetings)

# my way worked, and i prefer... but another way to do is below

def greeting2
  puts 'Hello!'
end

number_of_greetings2 = 2

while number_of_greetings2 > 0
  greeting2
  number_of_greetings2 -= 1
end




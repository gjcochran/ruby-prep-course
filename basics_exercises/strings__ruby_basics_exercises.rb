puts " ------------ 1 ------------- "
# Create a String


variable = String('example')
p variable 

# not quite right

empty_string = String.new
# OR 
empty_string = ''

puts " ------------ 2 ------------- "
# Quote Confusion

puts 'It\'s now 12 o\'clock.'
puts "It's now 12 o'clock."
# puts %q(It\'s now 12 o\'clock.)

puts %Q(It's now 12 o'clock.)

puts " ------------ 3 ------------- "
# Ignoring Case

name = 'Roger'
p name.downcase == 'RoGeR'.downcase
p name.downcase == 'DAVE'.downcase 

# my idea worked, but the way to do this is with the case-insensitive string class method .... .casecmp

p name.casecmp('RoGeR') == 0 # note that when both strings are equal, casecmp will return 0, if they are not equal casecmp will return -1 or 1 (depending on which side of argement is smaller)

puts " ------------ 4 ------------- "
# Dynamic String

name = 'Elizabeth'

puts "Hello, #{name}!"

puts " ------------ 5 ------------- "
# Combining Names

first_name = 'John'
last_name = 'Doe'

full_name = "#{first_name} #{last_name}"
p full_name #==> "John Doe"
puts full_name #==> John Doe

puts " ------------ 6 ------------- "
# Tricky Formatting 

state = 'tExAs'

state.downcase! # this was redundant as capitalize method will also downcase the rest of the word... didnt realize
state.capitalize!
p state 

puts " ------------ 7 ------------- "
# Goodbye, not Hello

greeting = 'Hello!'
# greeting = 'Goodbye!'
greeting.gsub!('Hello', 'Goodbye')
puts greeting

puts " ------------ 8 ------------- "
# Print the Alphabet

alphabet = 'abcdefghijklmnopqrstuvxyz' 

puts alphabet.chars 

# .chars worked... another option... 
puts alphabet.split('')

puts " ------------ 9 ------------- "
# Pluralize

words = 'car human elephant airplane'
words.split(' ').each {|word| puts "#{word}s"}

puts " ------------ 10 ------------- "
# Are You There?

colors = 'blue pink yellow orange'

colors.split(' ').include?('yellow') ? (puts true) : (puts false) 
colors.split(' ').include?('black') ? (puts true) : (puts false) 

# mine worked, but made way too complicated!!!

# could have simply done...
puts colors.include?('purple')
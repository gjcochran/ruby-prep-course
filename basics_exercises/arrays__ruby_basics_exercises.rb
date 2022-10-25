puts "-------- 1 ---------"
# New Pet

pets = ['cat', 'dog', 'fish', 'penguin']

my_pet = pets[2]

puts "I have a pet #{my_pet}"

puts "-------- 2 ---------"
# More Than One

my_pets = [pets[2], pets[3]] # a simpler way to write this... my_pets = pets[2..3]

puts "I have a pet #{my_pets[0]} and a pet #{my_pets[1]}"

puts "-------- 3 ---------"
# Free the Lizard

my_pets.pop

puts my_pets

puts "-------- 4 ---------"
# One Isn't Enough

puts my_pets.push(pets[1])

puts "-------- 5 ---------"
# What Color Are You?

colors = ['red', 'yellow', 'purple', 'green']

colors.each { |color| puts "I'm the color #{color}"}

puts "-------- 6 ---------"
# Doubled

numbers = [1, 2, 3, 4, 5]

p doubled_numbers = numbers.map { |num| num*2 }

puts "-------- 7 ---------"
# Divisible by Three

numbers_q7 = [5, 9, 21, 26, 39]

p divsible_by_three = numbers_q7.select { |num| num % 3 == 0 }

# However, the main difference between #map and #select is the way the new element's value is chosen. #map returns a new array with each element transformed based on the block's return value. #select returns a new array containing elements selected only if the block's return value evaluates as true.

puts "-------- 8 ---------"
# Favorite Number, part 1

[['dave', 7], ['miranda', 3], ['jason, 11']]

puts "-------- 9 ---------"
# Favorite Number, part 2

favorites = [['dave', 7], ['miranda', 3], ['jason, 11']]

p new_array = favorites.flatten 
# p new_array
p favorites 

puts "-------- 10 ---------"
# Are We The Same?

arr1 = [1, 5, 9]
arr2 = [1, 9, 5]

p arr1 == arr2 
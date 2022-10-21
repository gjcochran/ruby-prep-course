# note that can use Coder Runner Extension to output ruby code in vscode using ctrl-alt-n ... seems simpler than using irb in the terminal!
first_name = 'Garrett'
puts first_name

name = 'Somebody Else'

# method example
def print_full_name(first_name, last_name)
  name = first_name + last_name
  puts name
end

print_full_name 'Garrett', 'Cochran'

# variable scope and blocks

total = 0
[1, 2, 3].each { |number| total += number}
puts total # 6

total = 0 
[1, 2, 3].each do |number|
  total += number
end
puts total # 6

a = 5
3.times do |n|
  a = 3
end
puts a # 3  

arr = [1,2,3]
for i in arr do
  a = 5
end
puts a # 5

# types of variables
# constants (all caps)

BIRTH_YEAR = 1994

# global variables (start w dollar sign, override all scope boundaries therefore use carefully)

$year = 2022

# class variables (start w two @@)

 

# instance variables (one @)

# local variables (MOST COMMON TYPE)

var_ex = 'example local variable'

# EXERCISES
# exercise 1

puts "Name?"
# name = gets.chomp
# puts "Your name is " + name

# exercise 2

puts "Age?"
# age = gets.chomp.to_i #forgot to change to an integer..
# puts "In 10 years you will be: " 
# puts age+10
# puts "In 20 years you will be: " 
# puts age+20
# puts "In 30 years you will be: " 
# puts age+30
# puts "In 40 years you will be: " 
# puts age+40


# exercise 3

puts "Name?"
# name = gets.chomp
name = 'G' # putting this here as the gets command messes too much with the outputs in terminal when rerun
puts "Your name is " + name
# puts times.10(name)# my attempt, which is incorrect, correct answer below
10.times do 
  puts name
end  

# exercise 4
puts "First Name?"
# first_name = gets.chomp
puts "Last Name?"
# last_name = gets.chomp
puts first_name + " " + last_name



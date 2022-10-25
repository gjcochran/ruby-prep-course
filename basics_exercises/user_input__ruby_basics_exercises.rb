puts "-------- 1 ---------"
# Repeat after me

puts "Please type something"
answer = gets.chomp #dont need .chomp, although is nice b/c removes the newline character at the end of strings
puts answer

puts "-------- 2 ---------"
# Your Age in Months

puts "What is your age (in years)?"
response = gets.chomp.to_i
response_months = response * 12
puts "You are #{response_months} months old"

puts "-------- 3 ---------"
# Print Something

puts "Do you want the program to print? (y/n)"
ans = gets.chomp
if ans == 'y' 
  puts 'Yah'

puts "-------- 4 ---------"
  # Print Something, #2

puts "Do you want the program to print? (y/n)"
answ = gets.chomp
if answ == 'y' || answ == 'Y'
  puts 'Yah' 
elsif answ == 'n' || answ == 'N'
  puts answ
else
  puts "Not valid. Please try again"
  answ = gets.chomp 
end

# NOT CORRECT, need to run a loop so that will prompt them again...

choice = nil # Since variables created inside of loops are scoped in such a way that they aren't visible outside the loop, we must start by first defining the variable we want to use. Here we start by setting choice to nil; this guarantees that choice will be available both inside the loop and after the loop has finished running.
loop do
  puts ">> Do you want me to print something? (y/n)"
  choice = gets.chomp.downcase
  break if %w(y n).include?(choice) # note that %w(y n) is simply a shortcut for writing ["y", "n"], the %w literally means whitespace separated*
  puts '>> Invalid input. Please enter y or n'
end
puts 'something' if choice == 'y'


  #* the category %w falls into is the % literals, others listed below
  # %w() array of strings
# %r() regular expression.
# %q() string
# %x() a shell command (returning the output string)
# %i() array of symbols (Ruby >= 2.0.0)
# %s() symbol
# %() (without letter) shortcut for %Q()
# The delimiters ( and ) can be replaced with a lot of variations, like [ and ], |, !, etc.

# When using a capital letter %W() you can use string interpolation #{variable}, similar to the " and ' string delimiters. This rule works for all the other % literals as well.


puts "-------- 5 ---------"
  # Launch School Printer, part 1


selection = nil 

loop do 
  puts ">> How many lines do you want? Enter a number >= 3"
  selection = gets.chomp.to_i
  break if selection >=3
  puts ">> That's not enough lines. re-input."
  end
selection.times do 
  puts "Launch School is the best"
end

# another option rather than the times iterator... 
while selection > 0 
  puts "Launch School is the best"
  selction -= 1
end

puts "-------- 6 ---------"
# Passwords

PASSWORD = "makeuppassword"
loop do
  puts ">> Please enter your password"
  password_guess = gets.chomp # i put .to_s which was unnecessary as want password to match exactly
  break if password_guess == PASSWORD
  puts ">> Wrong!"
end
puts "Welcome user"


puts "-------- 7 ---------"
# User Name and Password

USER_NAME = "John"
PASSWORD2 = "makeuppassword"
loop do
  puts ">> Please enter your username" # did not separate username and password... note to prompt user for each separate input!!
  user_name_guess = gets.chomp
  puts ">> Please enter your password"
  password_guess = gets.chomp 
  break if user_name_guess == USER_NAME && password_guess == PASSWORD
  puts ">> Invalid"
end
puts "Welcome user"

puts "-------- 8 ---------"
# Dividing Numbers

def valid_number?(number_string)
  number_string.to_i.to_s == number_string
end

num1 = nil
num2 = nil

loop do
  puts "Please enter one number"
  num1 = gets.chomp.to_i # didnt need the .to_i, but if don't use then need to add the .to_i when calculate the division variable
  break if valid_number?(num1) == true # didnt need the == true, although still works with it
  puts "Not a valid integer, retry"
end

loop do
  puts "Please enter a second number"
  num2 = gets.chomp.to_i

  if num2 == 0
    puts "Invalid, retry"
  else
    break if valid_number?(num2) 
    puts "Not a valid integer, retry"
  end
end

division = num1 / num2
puts "#{num1} / #{num2} is #{division}"

# i did mostly entirely correct, i forgot about division by 0 returning an error... my answer is below and i fixed to the correct answer above
# loop do
#   puts "Please enter a second number"
#   num2 = gets.chomp.to_i
#   break if valid_number?(num2) == true 
#   puts "Not a valid integer, retry"
# end

puts "-------- 9 ---------"
# Launch School Printer, part 2

number_of_lines = nil
loop do
  loop do
    puts '>> How many output lines do you want? Enter a number >= 3 (Q to quit):'
    number_of_lines = gets.to_i
    break if number_of_lines >= 3
    puts ">> That's not enough lines."
  end

  while number_of_lines > 0
    puts 'Launch School is the best!'
    number_of_lines -= 1
  end
  break if number_of_lines.downcase == 'q'
end

# note that in my answer above i did add an outer loop, but did not complete 100% correctly. in particular i didnt create a separate gets variable for the q, and i didnt have q break out of both the inner loop and the outer loop. 
# typed out correct answer below

loop do 
  input_string = nil
  number_of_lines = nil

  loop do 
    puts ">> How many output lines do you want? " \
        "Enter a number >=3 (Q to Quit):"
    
    input_string = gets.chomp.downcase
    break if input_string == 'q'

    number_of_lines = input_string.to_i 
    break if number_of_lines >= 3 

    puts ">> That's not enough lines."
  end

  break if input_string == 'q'

  while number of lines > 0 
    puts 'Launch School is the best'
    number_of_lines -= 1
  end
end

puts "-------- 10 ---------"
# Opposites Attract

def number_okay(num)
  num.to_i.to_s == num && num.to_i != 0
end

loop do
  puts "Please enter a positive or negative number (integer)"
  num_1 = gets.to_i
  puts "Please enter a positive or negative number (integer)"
  num_2 = gets.to_i

  if num_1 > 0 && num_2 < 0 && number_okay(num_1) && number_okay(num_2)
    break 
  elsif num_1 < 0 && num_2 > 0 && number_okay(num_1) && number_okay(num_2)
    break
  else 
    puts "Please enter other numbers"
  end
  
end

sum_of_nums = num_1 + num_2
puts "#{num1} + #{num_2} is #{sum_of_nums}"

# believe my answer also works, although do like the given answer as multiplying the nums and breaking if negative is a clever approach and simpler than my if/else

# LS answer below
def valid_number?(number_string)
  number_string.to_i.to_s == number_string && number_string.to_i != 0
end

def read_number
  loop do
    puts '>> Please enter a positive or negative integer:'
    number = gets.chomp
    return number.to_i if valid_number?(number)
    puts '>> Invalid input. Only non-zero integers are allowed.'
  end
end

first_number = nil
second_number = nil

loop do
  first_number = read_number
  second_number = read_number
  break if first_number * second_number < 0
  puts '>> Sorry. One integer must be positive, one must be negative.'
  puts '>> Please start over.'
end

sum = first_number + second_number
puts "#{first_number} + #{second_number} = #{sum}"


 



# conditional.rb

puts "Put in a number"
# a = gets.chomp.to_i

# if a == 3
#   puts "a is 3"
# elsif a == 4
#   puts "a is 4"
# else
#   puts "a is neither 3 nor 4"
# end

x = 5

if x == 3
  puts 'x is 3'
end
# could also write
puts 'x is 3' if x == 3
#or could write
if x == 3 then puts 'x is 3' end

#  #
puts 'x is not 3' unless x == 3

#
# Ruby follows an order of precedence when deciding how to evaluate multiple expressions. The following is a list of operations from highest order of precedence (top) to lowest (bottom).

# <=, <, >, >= - Comparison
# ==, != - Equality
# && - Logical AND
# || - Logical OR

# When Should I Use a Ternary Expression?
# Ternary expressions should usually be used to select between 2 values, not to choose between two actions. (An action would be something like printing a value or setting a variable to a new value.) The ternary expression's result should almost always be assigned to a variable, passed to a method as an argument, or returned by a method. If you're not doing one of those things, an if/else statement is a better choice.

# case_statement.rb

a = 5

answer = case a
when 5
  "a is 5"
when 6
  "a is 6"
else
  "a is another number"
end

puts answer

# EXERCISES

(32 * 4) >= 129 #=> false
false != !true #=> false
true == 4 #=> false
false == (847 == '847') #=> true
(!true || (!(100/5) == 20) || ((328/4) == 82)) || false #=> false or not20 equal to 20 or true or false, ie false or false or true or false will be true 

# exercise 2

def caps (string)
  if string.length >= 10
     string.upcase
  else 
     string
  end
end

p caps('abadacadabara')
#did above correctly!

# exercise 3
# puts "Number between 0 and 100?"
# num = gets.chomp.to_i

# if num >= 0 && num <= 50
#   "Number is between 0 and 50"
# elsif num > 51 && num <= 100
#   "Number is between 51 and 100"
# elsif num > 100
#   "Number is greater than 100"
# end

# puts num

# did slightly incorrectly, solution is below... 

# puts "Number between 0 and 100?"
# number = gets.chomp.to_i

# if number < 0
#   puts "No negatives"
# elsif number <=50 
#   puts "#{number} is between 0 and 50"
# elsif number <= 100
#   puts "#{number} is between 51 and 100"
# else
#   puts "#{number} is above 100"
# end

# exercise 4

'4' == 4 ? puts("TRUE") : puts("FALSE") #=> FALSE [[was correct]]

x = 2
if ((x * 3) / 2) == (4 + 4 - x - 3)
  puts "Did you get it right?"
else 
  puts "Did you?"
end

#=> Did you get it right? [[was correct]]

y = 9 
x = 10
if (x + 1) <= (y)
  puts "Alright."
elsif (x + 1 ) >= (y)
  puts "Alright now!"
elsif (y + 1) == x
  puts "ALRIGHT NOW"
else 
  puts "Alrighty"
end

#=> Alright now! [[was correct]]

#exercise 6
# false
# false
# false
# true
# false
# true
#right on 2-6, answer to 1 was error as cant compare an integer to a string..



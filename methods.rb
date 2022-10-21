#some work in say.rb file

a = 5

def some_method
  a = 3
end 

puts a # result is 5 b/c "A method definition creates its own scope outside the regular flow of execution. This is why local variables within a method definition cannot be referenced from outside of the method definition. It's also the reason why local variables within a method definition cannot access data outside of the method definition (unless the data is passed in as an argument)."

#  example of method invocation with a block

[1, 2, 3,].each do |num|
  puts num
end

#  example of method definition

def print_num(num)
  puts num
end

# 

def some_method2(number)
  number = 7
end

a = 5
some_method2(a)
puts a # 5

#  mutate.rb

d = [1, 2, 3]

def mutate(array)
  array.pop
end

p "Before mutate method: #{d}"
mutate(d)
p "After mutate method: #{d}"

# the pop method mutates the caller, as seen in the example above. an example of a method that does not mutate the caller is .last
# "How do you know which methods mutate the caller and which ones don't? Unfortunately, you have to memorize it by looking at the documentation or through repetition...Ruby methods ALWAYS return the evaluated result of the last line of the expression unless an explicit return comes before it."

e = [1, 2, 3]

def no_mutate(array)
  array.last
end

p "Before no_mutate method: #{e}"
no_mutate(e)
p "After no_mutate method: #{e}"

# return
# in ruby, every method returns the evaluated result of the last line that is executed

def add_three(number)
  number + 3
end

returned_value = add_three(4)
puts returned_value

# chaining methods

add_three(5).times { puts 'this should print 8 times'}

p 'hi there'.length.to_s

# 
# def add_three2(n)
#   puts n + 3
# end

# add_three2(5).times { puts 'will this work?'} # does not work because puts always returns nil

#fix below

def add_three_final(n)
  new_value = n + 3
  puts new_value
  # return new_value # can write the return or just the variable and the return will be implicit, as demonstrated below
  new_value
end

p 'ADD THREE FINAL'
p add_three_final(8)

# method calls as arguments

def add(a, b)
  a + b
end

def subtract(a,b)
  a - b
end

p add(20,45)
p subtract(80,10)

def multiply (num1, num2)
  num1 * num2
end

p multiply(add(20,45), subtract(80,10))

p add(subtract(80,10), multiply(subtract(20,6), add(30,5)))

# methods, blocks, procs, and lambdas all use the call stack, which is how ruby keeps track of order of execution
# can think of the call stack as a to do list of function invocations as JS or ruby can basically only do one thing at a time
# stack is last in, first out structure (can think of it as a pile of books, ie add a new book to the top and to remove a book, have to take off the top)
# summary -- a stack is ordered set of stack frames. most recently invoked function is on the top of the stack. the bottom of the stack is the first function invoked. the stack is processed from top to bottom

def first
  puts 'first method'
end

def second
  first 
  puts 'second method'
end

# second

# EXERCISES
def greeting(name)
   'Good day ' + name
end
p greeting('Garrett')

# exercise 2

# x = 2 #==> 2
# puts x = 2 #==> nil # note that will output 2 and return nil as puts always returns nil...
# p name = 'Joe' #==> Joe
# four = "four" #==> "four"
# print something = 'nothing' #==> nil # print, like as if was puts, will output the string nothing and return nil

# exercise 3

def multiply_v2(arg1, arg2)
  arg1 * arg2
end
p multiply_v2(10,3)

# exercise 4

def scream(words)
  words = words + '!!!!'
  return
  puts words
end

p scream('Yippeee')
#i think that will output -- Yippee!!!! but wont output the second words below return
# answer -- won't print anything

def scream2(words)
  words = words + '!!!!'
  
  puts words
end

p scream2('Yippeee')
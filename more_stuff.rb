# REGEX

# Regex stands for regular expression. A regular expression is a sequence of characters that form pattern matching rules, and is then applied to a string to look for matches. Regular expressions have many uses, some examples:

# Check if the pattern "ss" appears in the string "Mississippi".
# Print out the 3rd word of each sentence from a list of sentences.
# Find and replace all instances of "Mrs" with "Ms" in a sentence.
# Does a string start with "St"?
# Does a string end with "art"?
# Does a string have non-alphanumeric characters in it?
# Are there any whitespace characters in the string?
# Find and replace all non-alphanumeric characters in a string with "-".
# This is just a small sample of what regexes can do. Below, we are going to focus solely on the first example because it's the most commonly used.

# Creating regular expressions starts with the forward slash character (/). Inside two forward slashes you can place any characters you would like to match with the string.

# We can use the =~ operator to see if we have a match in our regular expression. Let's say we are looking for the letter "b" in a string "powerball". Here's how we'd implement this using the =~ operator

p "powerball" =~ /b/ #==> 5

def has_an_a?(string)
  if string =~ /a/
    puts "yes"
  else
    puts 'no a in that word'
  end
end

p has_an_a?('basketball')
p has_an_a?('hockey')

# On top of the =~ operator, we can use the match method to perform regex comparisons as well. This method returns a MatchData object that describes the match or nil if there is no match.

p /b/.match("humble") #<MatchData "b">

# RUBY STANDARD CLASSES

# When you have a specific action that you need to perform, look for it first among Ruby's standard classes. Using libraries like the Math module can help you solve problems more efficiently.

# Let's say you wanted to find a way to calculate the square root of a number. Ruby's Math module has a method called sqrt that you can use right away.

p Math.sqrt(400) # 20.0

p Math::PI # 3.141592653589793

# Variables as Pointers

# We'll take a deeper look at variables in this section, and specifically how they act as pointers to an address space in memory. That is, the variable doesn't actually contain the value. Instead, it contains a pointer to a specific area in memory that contains the value. This is a concept that confuses a lot of new programmers, and it's also one of the most important concepts to understand. The easiest way to understand variables as pointers is to look at some examples.

a = "hi there"
b = a 
a = "not here"
p a, b 
#=>
# "not here"
# "hi there"

c = "hi there"
d = c
c << ", Bob"
p c #==> "hi there, Bob"
p d #==> "hi there, Bob"

# The line of code a << ", Bob" did not result in reassigning a to a new string. Rather, it mutated the caller and modified the existing string, which is also pointed to by the variable b. This explains why in this code, b reflects the changes to a - they're both pointing to the same thing.

# This is the major point of this section: some operations mutate the address space, while others simply make the variable point to a different address space.

# This also applies to variables that point to arrays, hashes, or any data structure that has methods that mutate the caller. If you call a method that mutates the caller, it will change the value in that object's address space, and any other variables that also point to that object will be affected. Therefore, always pay attention to whether your variables are pointing to the same object (address space) or if they are dealing with copies that occupy different address spaces.

# 
def take_block(number, &block)
  block.call(number)
end

number = 42
take_block(number) do |num|
  puts "Block being called in the method! #{num}"
end

# 
talk = Proc.new do |name|
  puts "I am talking to #{name}"
end
talk.call "Bob" #==> I am talking to Bob

# 
def take_proc(proc)
  [1, 2, 3].each do |num|
    proc.call num
  end
end

proc = Proc.new do |num|
  puts "#{num}. Proc is being called in the method."
end

take_proc(proc)
#==>
# 1. Proc is being called in the method.
# 2. Proc is being called in the method.
# 3. Proc is being called in the method.

# Exception handling is a specific process that deals with errors in a manageable and predictable way. 
# When your programs are interacting with the real world, there is a large amount of unpredictability. If a user enters bad information or a file-manipulating process gets corrupted, your program needs to know what to do when it runs into these exceptional conditions.

# Ruby has an Exception class that makes handling these errors much easier. It also has a syntactic structure using the reserved words begin, rescue, and end to signify exception handling. 

# exception_example.rb

# begin
  # perform some dangerous operation
# rescue
  # do this if operation fails
  # for example, log the error
# end

# ex

names = ['bob', 'joe', 'frank', nil]

names.each do |name|
  begin
    puts "#{name} is #{name.length} long"
  rescue
    puts "error"
  end
end

#==>
# bob is 3 long
# joe is 3 long
# frank is 5 long
# error

# EXERCISES

def ex1(string)
  if /lab/ =~ string
    puts string
  end
end

ex1("laboratory")
ex1("experiment")



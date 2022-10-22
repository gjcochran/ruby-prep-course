# DOCUMENTATION
# Until recently, http://ruby-doc.org was the primary source for Ruby docs, and most of our answers and course material use it. However, recently, things have changed and now https://docs.ruby-lang.org/en/ is the preferred choice, so we encourage you to use it instead. However, don't worry if you find links to the older documentation in our material; the content is almost always identical.

# The core API consists of all of the classes and modules that are available to your ruby programs without having to specifically require them in your program. This includes the Object, String, Array, and Hash classes, as well as the Kernel and Enumerable modules and many other classes and modules you will need often.

# The standard library API consists of a number of classes and modules that are provided by your ruby distribution, but that need to be specifically imported into your program with require. This includes the Set, Date, JSON, and YAML classes, and the Singleton and Find modules. Most of these you won't encounter during your earliest days with ruby, but will become more familiar with time and experience.

# There is no separate section that discusses the ruby language itself. Some of what people think of as "the language" are actually methods in the Kernel module or Object class, including loop, exit, fail, gets and require. The rest of the language, such as basic syntax, control methods (while, until, if, unless, case, break, next) operators, methods, and much more is tucked away in the core API documentation. Go to the core API documentation for your version of ruby and look near the top for the "New to ruby?" links. You will also find additional topics discussed in the links provided under the "Files" heading.

# Note that the documentation effort is not complete; there are still a number of items that are not covered or are inadequately covered. However, it remains the most complete and up-to-date documentation available.

# -------------- WHAT'S MY VALUE --------------
puts "-------------- WHAT'S MY VALUE --------------"
# 1
a = 7 

def my_value(b)
  b += 10
end

p my_value(a) #==> 17
puts a #==> 7

# 2
a = 7

def my_value2(a)
  a += 10
end

p my_value2(a) #==> 17
puts a #==> 7

# 3
a = 7

def my_value3(b)
  a = b
end

p my_value3(a + 5) #==> 12
puts a #==> 7

# 4 # When we were working with a numeric variable, no changes were made to a. This was due to the fact that numbers are immutable, and assignment merely changes the object that a variable references. Now, though, Strings are mutable - they can be modified - and, in particular, the method String#[]= is a mutating method; it actually modifies the string. Since we are actually modifying the string referenced by b, and b references the same string as a, the result from printing a shows an update to the value of the string.

a = "Xyzzy"

def my_value4(b)
  b[2] = '-'
end

p my_value4(a) #==> "-"
puts a #==> Xy-zy

# 5

a = "Xyzzy"

def my_value5(b)
  b = "yzzyX"
end

p my_value5(a) #==> "yzzyX"
puts a #==> "Xyzzy" 
# However, we are not modifying that string in this exercise. Instead, we are assigning a completely new string to b. Assignment never changes the value of an object; instead, it creates a new object, and then stores a reference to that object in the variable on the left. So, at the end of my_value, b references the string 'yzzyX', while a remains unchanged: it still references "Xyzzy".

# So, how does this differ from b[2] = '-'? The key difference with b[2] = '-' is that this is not quite the same as object assignment; it is a call to a method named []=, and this method updates the String referenced by b; it does not change the reference, so a is also referencing the modified String.

# To summarize, assignment to a variable (an object) never mutates the object that is referenced. However, don't take that too far: if you assign to b[2] like we did in the previous exercise, that's a completely different operation; that actually mutates the content of the String referenced by b.

# 6 
a = 7

def my_value6(b)
  b = a + a 
end

# my_value6(a) #==> error
puts a #==> 7
# i don't understand how this would work, the as in the method cant reference the a that is defined outside... [WAS CORRECT]

#  7
a = 7
array = [1, 2, 3]

array.each do |element|
  a = element
end

puts a #==> [1, 2, 3] # wrong, answer is just 3 bc that is the last value that a will be before we exit the loop

# 8
array = [1, 2, 3]

array.each do |element|
  a = element
end

puts a #==> error ... a has to be initially assigned outside of the iterator

puts "--#9--"
# 9 
a = 7 
array = [1, 2, 3]

array.each do |a|
  p a += 1 #==> 2, 3, 4
end

puts a #==> 7

#10
puts "--#10--"

# a = 5
array = [1, 2, 3]

def my_value10(ary)
  # a = 7
  a = 0
  ary.each do |b|
    a += b 
  end
end

p my_value10(array)
puts a #==> error bc a is not visible to do/end method while inside my_value10








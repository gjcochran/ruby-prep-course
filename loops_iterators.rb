# loop_example.rb

# loop do 
#   puts "infinite loop"
# end

i = 0
loop do
  i += 1
  puts i 
  break
end

#
k = 0 
loop do
  k += 2
  puts k
  if k == 10
    break
  end
end

j = 0
loop do 
  j += 2
  if j == 4
    next
  end
  puts j 
  if j == 10
    break
  end
end

#
x = 42
loop do
  puts x
  x = 2
  break
end

puts x

# ----------- WHILE LOOPS ------------------
# y = gets.chomp.to_i
puts "----WHILE-----"
y = 4

while y >= 0
  puts y 
  y -= 1
end

puts "Done!"

# note that while is not a method, like loop do is, therefore can define variables in the loop and access them outside [this also applies to until loops and for loops]

z = 0
while z < 5
  y = z ** 2
  z += 1
end
puts y 

# -------------UNTIL LOOPS ----------
puts "-------UNTIL--------"

# v = gets.chomp.to_i 
v = 7

until v < 0
  puts v 
  v -= 1
end

puts "Done!"

# DO/WHILE

# loop do 
#   puts "Do you want to do that again?"
#   answer = gets.chomp
#   if answer != 'Y'
#     break
#   end
# end

# another way to write same DO/WHILE example... but is not recommended way to write

# begin
#   puts "Do you want to do that again?"
#   answer = gets.chomp
# end while answer == 'Y'

# ------------ FOR LOOPS -----------
puts "--------FOR--------"

w = 6

for l in 1..w do
  puts w - l 
end

puts "Done!"

puts "--ex2----"

q = [1, 2, 3, 4, 5]
for i in q.reverse do
  puts i 
end

puts "Done!"

# --- CONDITIONALS WITHIN LOOPS ------
puts "--next section--"

x = 0
while x <= 10
  if x.odd?
    puts x
  end
  x += 1
end

puts "---ex2----"

x = 0
while x <= 10
  if x == 3
    x += 1
    next
  elsif x.odd?
    puts x
  end
  x += 1
end

puts "-----ex3------"

x = 0
while x <= 10 
  if x == 7 
    break
  elsif x.odd?
    puts x
  end
  x += 1
end

# ---------- ITERATORS --------------
# most rubyists prefer to use iterators rather than loops

#ex
puts "-------------------ITERATORS---------------"
#only example of iterators that they gave is the each method

names = ['Hunter', 'Ruairi', 'Aaron', 'John']
names.each { |name| puts name }

puts "---ex2--"

names = ['Hunter', 'Ruairi', 'Aaron', 'John']
x = 1

names.each do |name|
  puts "#{x}. #{name}"
  x += 1
end

#------------------ RECURSION ----------------

#Recursion is another way to create a loop in Ruby. Recursion is the act of calling a method from within itself. 

puts "RECUSION EXAMPLE ------"

# def doubler(start)
#   puts start * 2
# end

# p doubler(4)

def doubler(start)
  puts start
  if start < 10
    doubler(start * 2)
  end
end

p doubler(2)

puts "---ex2----"

def fibonacci(number)
  if number < 2
    number
  else
    fibonacci(number - 1) + fibonacci(number - 2)
  end
end

puts fibonacci(6)

# EXERCISES

def zero_counter(num)
  if num <= 0 
    puts num
  else
    puts num
    zero_counter(num-1)
  end
end

p zero_counter(20)
p zero_counter(0)

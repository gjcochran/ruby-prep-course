array_ex1 = [1, 'Bob', 4.33, 'string']
p array_ex1.first
p array_ex1.last
p array_ex1[2]

array_ex1.pop
p array_ex1

array_ex1.push(23)
array_ex1 << 'another string' # << and .push do the same thing
p array_ex1

# The map method iterates over an array applying a block to each element of the array and returns a new array with those results. The irb session below shows how to use map to get the square of all numbers in an array. The collect method is an alias to map - they do the same thing.

p a = [1, 2, 3, 4]

p a.map { |num| num**2 }

p a.collect { |num| num**3 }

p a.delete_at(1) #deletes the value at index 1 in the array a
p a 

my_pets = ['cat', 'dog', 'bird']

my_pets.delete('cat')
p my_pets

# Another useful method is the uniq method. This iterates through an array, deletes any duplicate values that exist, then returns the result as a new array.

b = [1, 2, 1, 2, 3, 5]
p b.uniq
p b 
b.uniq! #adding the ! makes the uniq method destructive so that permanently changes the array...
p b 

# select method (iterates and returns true values)

numbers = [1, 2, 3, 4, 5, 6, 7, 8, 9, 10]
p numbers.select { |num| num > 4 }

# can have an array of arrays or an array of hashes

# can compare arrays using the equality operator ie == (returns boolean)

# unshift method -- similar to push method, where push method adds a value to the end of an array, unshift adds a value to the start
y = [2, 3, 4]
y.unshift(1)
p y 

# to_s -- creates a string representation of an array

#example

a = [1, 2, 3]

p "It's as easy as #{a}" # ruby auto used to_s for us...

# ---- COMMON ARRAY METHODS -----

# The include? method checks to see if the argument given is included in the array. It has a question mark at the end of it which usually means that you should expect it to return a boolean value, true or false. (Such methods are called predicates.) Just like the methods that end in a "!", this is strictly by convention only and not a property of the language.

a = [1, 2, 3, 4, 5]
p a.include?(3)

# The flatten method can be used to take an array that contains nested arrays and create a one-dimensional array.

a = [1, 2, [3, 4, 5], [6, 7]]
p a.flatten
p a # is not destructive

# The each_index method iterates through the array much like the each method, however the variable represents the index number as opposed to the value at each index. It passes the index of the element into the block and you may do as you please with it. The original array is returned.

a = [1, 2, 3, 4 , 5]
a.each_index { |i| puts "this is index #{i}"}

# Another useful method that works in a similar way to each_index is each_with_index.

a = [1, 2, 3, 4, 5]
a.each_with_index { |val, idx| puts "#{idx+1}. #{val}"}

# The sort method is a handy way to order an array. It returns a sorted array.

a = [5, 2, 6, 8, 3, 4, 1, 10, 15, -1]
p a.sort #==> [-1, 1, 2, 3, 4, 5, 6, 8, 10, 15]

# The product method can be used to combine two arrays in an interesting way. It returns an array that is a combination of all elements from all arrays.

arr1 = [1, 2, 3]
arr2 = [4, 5, 6]

p arr1.product(arr2) #==> [[1, 4], [1, 5], [1, 6], [2, 4], [2, 5], [2, 6], [3, 4], [3, 5], [3, 6]]

#
# each provides a simple way of iterating over a collection in Ruby and is more preferred to using the for loop. The each method works on objects that allow for iteration and is commonly used along with a block. If given a block, each runs the code in the block once for each element in the collection and returns the collection it was invoked on. If no block is given, it returns an Enumerator.

a = [1, 2, 3]
a.each { |e| puts e}
a = [1, 2, 3]
p a.each { |e| e}

a = [1, 2, 3]
a.each { |e| puts e + 2 }
# can also return same result with do / end
a = [1, 2, 3]
a.each do |e|
  puts e + 2
end

# map also works on objects that allow for iteration. Like each, when given a block it invokes the given block once for each element in the collection. Where it really differs from each is the returned value. map creates and returns a new array containing the values returned by the block.

a = [1, 2, 3]
p a.map { |x| x**2 }

# EXERCISES

arr = [1, 3, 5, 7, 9, 11]
p arr.include? 3

# 
arr = ["b", "a"]
   p arr = arr.product(Array(1..3))
   p arr.first.delete(arr.first.last)

  #  1. returns 1
  #   arr =  [["b"], ["b", 2], ["b", 3], ["a", 1], ["a", 2], ["a", 3]]



arr = ["b", "a"]
   p arr = arr.product([Array(1..3)])
   p arr.first.delete(arr.first.last)

  #  2. returns [1, 2, 3]
  #   arr = [["b"], ["a", [1, 2, 3]]]

# exercise 3

arr = [['test', 'hello', 'world'], ['example', 'mem']]
p arr[1][0]
#^ note that this is correct, there is another way to do below
p arr.last.first

# exercise 4

arr = [15, 7, 18, 5, 12, 8, 5, 1]

p arr.index(5) #==> 3
# p arr.index[5] #==> not sure! syntax doesnt seem to be correct..
p arr[5] #==> 8

#note that was correct about all 3, above. the second returned an error

# exercise 6

names = ['bob', 'joe']
names[1] = 'jody'
p names #==> ['bob', 'jody']

# exercise 7

arr_example = [10, 20, 30, 40, 50]
arr_example.each_with_index { |val, inx| puts "#{inx + 1}: #{val}"}
#==>
# 1: 10
# 2: 20
# 3: 30
# 4: 40
# 5: 50

# exercise 8

p arr8 = [100, 200, 300]
p arr8.map { |i| i + 2 }

#  above was my answer, was similar to their 2nd answer, only diff was that i did not assign mapped array to a new array variable ... their answers (2 options) below

arrr = [1, 2, 3, 4, 5]
new_arrr = []

arrr.each do |n|
  new_arrr << n + 2
end

p arrr
p new_arrr

arrr2 = [1, 2, 3, 4, 5]
new_arrr2 = arrr2.map do |n|
  n + 2
end
p arrr2, new_arrr2


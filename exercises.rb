# exercise 1 -- Use the each method of Array to iterate over [1, 2, 3, 4, 5, 6, 7, 8, 9, 10], and print out each value. # CORRECT

array = [1, 2, 3, 4, 5, 6, 7, 8, 9, 10]

array.each { |i| puts i }
#==>
# 1
# 2
# 3
# 4
# 5
# 6
# 7
# 8
# 9
# 10

# exercise 2 -- Same as above, but only print out values greater than 5. # CORRECT (> 5 not >= 5)

array.each do |i|
  if i >= 5
    puts i 
  end
end
#==>
# 5
# 6
# 7
# 8
# 9
# 10

# exercise 3 -- Now, using the same array from #2, use the select method to extract all odd numbers into a new array. # CORRECT, although they did differently

new_array = array.select { |n| n.odd? }
p new_array #==> [1, 3, 5, 7, 9]

# another way to do
new_array_2 = array.select { |n| n % 2 != 0 }

# exercise 4 -- Append 11 to the end of the original array. Prepend 0 to the beginning. # CORRECT

array.push(11) # could also do...  array << 11
array.unshift(0)
p array #==> [0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11]

# exercise 5 -- Get rid of 11. And append a 3. # CORRECT

array.pop
array.push(3)
p array #==> [0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 3]

# exercise 6 -- Get rid of duplicates without specifically removing any one value. # CORRECT

p array.uniq #==> [0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10]

# exercise 7 -- What's the major difference between an Array and a Hash? # CORRECT

# my answer: hashes have both a key and a value, whereas arrays only have a value

# exercise 8 -- Create a Hash, with one key-value pair, using both Ruby syntax styles. # CORRECT

old_ruby = {
  :old => 99
}
new_ruby = {
  old: 99
}

# exercise 9 -- Suppose you have a hash h = {a:1, b:2, c:3, d:4} # CORRECT, although i made the 3rd section a bit more complicated than needed to be
h = {a:1, b:2, c:3, d:4}
# 1. Get the value of key `:b`.
p h[:b]
# 2. Add to this hash the key:value pair `{e:5}`
h[:e] = 5
p h 
# 3. Remove all key:value pairs whose value is less than 3.5
h.each do |k, v|
  if v < 3.5 
    h.delete(k)
  end
end
p h 

# my answer above generated the correct output... but could have written instead,

h.delete_if { |k, v| v < 3.5 }

# exercise 10 -- Can hash values be arrays? Can you have an array of hashes? (give examples) # CORRECT

# yes to both

# exercise 11 -- Given the following data structures, write a program that copies the information from the array into the empty hash that applies to the correct person. #INCORRECT... DID NOT CREATES NEW KEYS

contact_data = [["joe@email.com", "123 Main st.", "555-123-4567"],
            ["sally@email.com", "404 Not Found Dr.", "123-234-3454"]]

contacts = {"Joe Smith" => {}, "Sally Johnson" => {}}

# Expected output:
#  {
#    "Joe Smith"=>{:email=>"joe@email.com", :address=>"123 Main st.", :phone=>"555-123-4567"},
#    "Sally Johnson"=>{:email=>"sally@email.com", :address=>"404 Not Found Dr.",  :phone=>"123-234-3454"}
#  }

# contacts.first.last << contact_data.first
# p contacts
# contacts["Joe Smith"] = contact_data.first
# contacts["Sally Johnson"] = contact_data.last
p contacts #==> {"Joe Smith"=>["joe@email.com", "123 Main st.", "555-123-4567"], "Sally Johnson"=>["sally@email.com", "404 Not Found Dr.", "123-234-3454"]}

# CORRECT ANSWER

# contacts["Joe Smith"][:email] = contact_data[0][0]
contacts["Joe Smith"][:email] = contact_data[0][0]
contacts["Joe Smith"][:address] = contact_data[0][1]
contacts["Joe Smith"][:phone] = contact_data[0][2]
contacts["Sally Johnson"][:email] = contact_data[1][0]
contacts["Sally Johnson"][:address] = contact_data[1][1]
contacts["Sally Johnson"][:phone] = contact_data[1][2]

# exercise 12 -- Using the hash you created from the previous exercise, demonstrate how you would access Joe's email and Sally's phone number. # CORRECT

# p contacts[0][0]
p contacts["Joe Smith"][:email]
p contacts["Sally Johnson"][:phone]

# exercise 13 -- Use Ruby's Array method delete_if and String method start_with? to delete all of the strings that begin with an "s" in the following array. # CORRECT

arr = ['snow', 'winter', 'ice', 'slippery', 'salted roads', 'white trees']

arr.delete_if { |word| word.start_with?('s') }
p arr #==> ["winter", "ice", "white trees"]

# Then recreate the arr and get rid of all of the strings that start with "s" or starts with "w".

arr.unshift('snow')
arr.unshift('slippery')
arr.unshift('salted roads')
arr.insert(0, arr.delete_at(2))
arr.insert(1, arr.delete_at(3))
arr.insert(2, arr.delete_at(4))
arr.insert(3, arr.delete_at(4))
p arr # ==> ["snow", "winter", "ice", "slippery", "salted roads", "white trees"]

arr.delete_if{ |word| word.start_with?('s') || word.start_with?('w') } 
p arr #==> ["ice"]

# note that was correct, but there is an easier way to write this...
arr.delete_if { |str| str.start_with?("s", "w") }

# exercise 14 -- Take the following array, and turn it into a new array that consists of strings containing one word. (ex. ["white snow", etc...] → ["white", "snow", etc...]. Look into using Array's map and flatten methods, as well as String's split method.

a = ['white snow', 'winter wonderland', 'melting ice',
     'slippery sidewalk', 'salted roads', 'white trees']

a.map! { |str| str.split }
a.flatten!
p a #==>["white", "snow", "winter", "wonderland", "melting", "ice", "slippery", "sidewalk", "salted", "roads", "white", "trees"]

# exercise 16 

contact_data_2 = ["joe@email.com", "123 Main st.", "555-123-4567"]
contacts_2 = {"Joe Smith" => {}}

# my solution was incorrect (deleted)! correct solution below

fields = [:email, :address, :phone]

contacts_2.each do |name, hash|
  fields.each do |field|
    hash[field] = contact_data_2.shift
  end
end

p contacts_2 #==> {"Joe Smith"=>{:email=>"joe@email.com", :address=>"123 Main st.", :phone=>"555-123-4567"}}










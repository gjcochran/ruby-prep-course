a = "ten"

"My favorite number is #{a}!"

# need to make integer a float to get decimals back. ex. would need to write 15.0 / 4 to get 3.75 back as result (if write 15 / 4 irb will return just 3)

# type conversion -- eg converting string to integer
'12'.to_i #==> 12

.to_i # convert to an integer
.to_f # convert to a float (ie an integer with decimals)

.to_s # convert to a string

# arrays and hashes
[1, 2, 3] # array

{:dog => 'barks', :cat => 'meows'} #hash (.... ie is similar to a JS object with key-value pairs...)

# EXERCISES
# exercise 1
Firstname = "Garrett"
Lastname = "Cochran"

"#{Firstname} #{Lastname}"

"Garrett " + "Cochran"

# exercise 2

5967 / 1000 #==> 5
5967 % 1000 / 100 #==> 9
5967 % 100 / 10 #==> 6
5967 % 10 #==> 7

# exercise 3
movies = {
  :Avatar => 2008,
  :Ghostbuster => 1980,
  :made_up => 2009
}
puts movies[:Avatar]
puts movies[:Ghostbuster]

# exercise 4
dates = [2008, 1980, 2009]

puts dates[0]

# exercise 5
# struggled to do with a function, ie method and while loop!
puts 5*4*3*2*1

# exercise 6

puts 12.1 ** 2
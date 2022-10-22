# A hash is a data structure that stores items by associated keys. This is contrasted against arrays, which store items by an ordered index. Entries in a hash are often referred to as key-value pairs. This creates an associative representation of data.

# Most commonly, a hash is created using symbols as keys and any data types as values. All key-value pairs in a hash are surrounded by curly braces {} and comma separated.

# Hashes can be created with two syntaxes. 
# OG syntax ... 
old_syntax_hash = {:name => 'bob'}
# new syntax ... 
new_hash = {name: 'bob'}

#
person = {
  height: '6 ft',
  weight: '160 lbs'
}
# too add to a hash...
person[:hair] = 'brown'

p person

# remove from a hash...

person.delete(:hair)

p person

# retreive info from a hash...

p person[:weight]

# merge two hashes together

person.merge!(new_hash) # only use ! if want this merge to be destructive, doesnt have to be

p person

# --- iterating over hashes ------

person.each { |k, v| puts "Bob's #{k} is #{v}"}
#==> Bob's height is 6 ft
# Bob's weight is 160 lbs
# Bob's name is bob

#
def greeting(name, options = {})
  if options.empty?
    puts "Hi, my name is #{name}"
  else 
    puts "Hi, my name is #{name} and I'm #{options[:age]}" + " years old and I live in #{options[:city]}."
  end
end

p greeting("Bob")
p greeting("Jimmy", {age: 62, city: "Denver"})
# note that do not need the {} when a hash is the last argument, ex could just write...
p greeting("Cassandra", age: 14, city: 'Philadelphia')

# --- basic rules for when to use a hash vs an array ----
# Does this data need to be associated with a specific label? If yes, use a hash. If the data doesn't have a natural label, then typically an array will work fine.

# Does order matter? If yes, then use an array. As of Ruby 1.9, hashes also maintain order, but usually ordered items are stored in an array.

# Do I need a "stack" or a "queue" structure? Arrays are good at mimicking simple "first-in-first-out" queues, or "last-in-first-out" stacks.

#  ---- COMMON HASH METHODS ------

# The key? method allows you to check if a hash contains a specific key. It returns a boolean value.

name_age = {
  Garrett: 28,
  Chandler: 25
}

p name_age.key?(:Garrett)

# The select method allows you to pass a block and will return any key-value pairs that evaluate to true when passed to the block.


p name_age.select { |key, value| key == :Garrett}

# The fetch method allows you to pass a given key and it will return the value for that key if it exists. You can also specify an option for return if that key is not present. 

p name_age.fetch(:Chandler)

p name_age.fetch(:Larry, "Larry isn't in this hash")

# The to_a method returns an array version of your hash when called. 

p name_age.to_a

#
p name_age.keys #==> [:Garrett, :Chandler]
p name_age.values #==> [28, 25]
name_age.keys.each { |k| puts k}
#==> 
# Garrett
# Chandler

# EXERCISES

family = {  uncles: ["bob", "joe", "steve"],
            sisters: ["jane", "jill", "beth"],
            brothers: ["frank","rob","david"],
            aunts: ["mary","sally","susan"]
          }


p immediate_fam  =  family.select { |k, v| k == :sisters || k == :brothers }   
# have to use ||.. && doesnt work

#to add to a new array...
p immediate_fam.values.flatten

# exercise 3

hash_3 = {
  1 => "one",
  2 => 'two',
  3 => 'three'
}

hash_3.each { |k, v| puts k }
hash_3.each { |k, v| puts v }
hash_3.each { |k, v| puts "#{k}: #{v}" }

personB = {
  name: 'Bob',
  occupation: 'dev'
}

p personB[:name]



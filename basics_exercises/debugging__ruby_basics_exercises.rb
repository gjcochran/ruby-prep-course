puts " --------------- 1 -----------------"
# Reading Error Messages

# def find_first_nonzero_among(numbers)
#   numbers.each do |n|
#     return n if n.nonzero?
#   end
# end

# # Examples

# find_first_nonzero_among(0, 0, 1, 0, 2, 0) # expecting argument 1... only have one parameter so can only input one, if want to input multiple then have to first assign these numbers to an array
# find_first_nonzero_among(1) # did not know this one... will reaise a NoMethodError as you can't call each on an integer

puts " --------------- 2 -----------------"
# Weather Forecast

def predict_weather
  sunshine = ['true', 'false'].sample
  if sunshine == true 
    puts 'Sunny!'
  else 
    puts 'Cloudy!'
  end
end

p predict_weather

# my solution worked ... 

# another solution would be to keep the if/else the same and instead change sunshine = ... to sunshine = [true, false].sample (ie to booleans rather than strings)

puts " --------------- 3 -----------------"
# Multiply By Five

# def multiply_by_five(n)
#   n * 5 
# end

# puts '....'
# number = gets.chomp.to_i
# puts "result is #{multiply_by_five(number)}"

puts " --------------- 4 -----------------"
# Pets

pets = {
  cat: 'fluf',
  dog: ['sparky', 'fido'],
  fish: 'oscar'
}
puts pets 

pets[:dog] << 'bowser' # or... pets[:dog].push('bowser')

p pets 

puts " --------------- 5 -----------------"
# Even Numbers

numbers = [5, 2, 9, 6, 3, 1, 8]

even_numbers = numbers.select do |n|
  n.even? 
end

p even_numbers 

puts " --------------- 6 -----------------"
# Confusius Says

def get_quote(person)
  if person == 'Yoda'
    return 'Do. Or do not. There is no try.'
  end

  if person == 'Confucius'
    return 'I hear and I forget. I see and I remember. I do and I understand.'
  end

  if person == 'Einstein'
    return 'Do not worry about your difficulties in Mathematics. I can assure you mine are still greater.'
  end
end

puts 'Confucius says:'
puts get_quote('Confucius')

# get_quote('Yoda')

puts " --------------- 7 -----------------"
# Account Balance # correct (not implying that wasnt on others, havent marked until #7)

balance = 0

january = {
  income: [ 1200, 75 ],
  expenses: [ 650, 140, 33.2, 100, 26.9, 78 ]
}

february = {
  income: [ 1200],
  expenses: [ 650, 140, 320, 46.7, 122.5 ]
}

march = {
  income: [ 1200, 10, 75 ],
  expenses: [ 650, 140, 350, 12, 59.9, 2.5 ]
}

def calculate_balance(month)
  plus = month[:income].sum 
  minus = month[:expenses].sum

  plus - minus
end

[january, february, march].each do |month|
  balance += calculate_balance(month)
end

puts balance 

puts calculate_balance(january)
puts calculate_balance(february)
puts calculate_balance(march)

puts " --------------- 8 -----------------"
# Colorful Things [missed that one was shorter]

# colors = ['red', 'yellow', 'purple', 'green', 'dark blue', 'turquoise', 'silver', 'black']
# things = ['pen', 'mouse pad', 'coffee mug', 'sofa', 'surf board', 'training mat', 'notebook']

# colors.shuffle!
# things.shuffle!

# i = 0
# loop do
#   break if i > colors.length

#   puts 'I have a ' + colors[i] + ' ' + things[i] + '.'
 
#   i += 1
# end

colors = ['red', 'yellow', 'purple', 'green', 'dark blue', 'turquoise', 'silver', 'black']
things = ['pen', 'mouse pad', 'coffee mug', 'sofa', 'surf board', 'training mat', 'notebook']

colors.shuffle!
things.shuffle!

i = 0
loop do
  break if i > things.length - 1 # could use || so that always will stop at shorter array

  if i == 0
    puts 'I have a ' + colors[i] + ' ' + things[i] + '.'
  else
    puts 'And a ' + colors[i] + ' ' + things[i] + '.'
  end

  i += 1
end

puts " --------------- 9 -----------------"
# Digit Product [correct]

def digit_product(str_num)
  digits = str_num.chars.map { |n| n.to_i }
  product = 1

  digits.each do |digit|
    product *= digit
  end

  product
end


p digit_product('12345')
# expected return value: 120
# actual return value: 0

puts " --------------- 10 -----------------"
# Warriors and Wizards

# Each player starts with the same basic stats.

player = { strength: 10, dexterity: 10, charisma: 10, stamina: 10 }

# Then the player picks a character class and gets an upgrade accordingly.

character_classes = {
  warrior: { strength:  20 },
  thief:   { dexterity: 20 },
  scout:   { stamina:   20 },
  mage:    { charisma:  20 }
}

# puts 'Please type your class (warrior, thief, scout, mage):'
# input = gets.chomp.downcase.to_sym 
input = 'thief'.to_sym

p player.merge!(character_classes[input])

# p player 
# p character_classes
# p character_classes[input]
# p character_classes[:thief]

puts 'Your character stats:'
puts player 

#rb:204:in `merge': no implicit conversion of nil into Hash (TypeError) # my solution is to convert the string to a hash value with the method .to_sym + need to make .merge destructive with .merge!

# did correctly, solution was indeed to use .to_sym, although LS solution did not do until line 204 and wrote ....character_classes[input.to_sym])




puts "-------- 1 ---------"
# First Car

car = {
  type: 'sedan',
  color: 'blue',
  mileage: 80_000,
}
puts car 

puts "-------- 2 ---------"
# Adding the Year

car[:year] = 2003

puts car 

puts "-------- 3 ---------"
# Broken Odometer

car.delete(:mileage)
puts car 

puts "-------- 4 ---------"
# What Color?

puts car[:color]

puts "-------- 5 ---------"
# Labeled Numbers

numbers = {
  high: 100, 
  medium: 50,
  low: 10
}

numbers.each { |key, value| puts "a #{key} number is #{value}"}

puts "-------- 6 ---------"
# Divided by Two

p half_numbers = numbers.map { |key, value| value / 2 }

puts "-------- 7 ---------"
# Low, Medium, or High?

p low_numbers = numbers.select { |k, v| v < 25 }

puts "-------- 8 ---------"
# Low or Nothing

p low_numbers2 = numbers.select! { |key, val| val < 25 }
p numbers 

puts "-------- 9 ---------"
# Multiple Cars

cars = {
  'car2' => { #could also write... car2: {...}
    type: 'sedan',
    color: 'blue',
    year: 2003,
  },
  'truck' => {
    type: 'pickup',
    color: 'red',
    year: 1998
  }
}
puts cars 

puts "-------- 10 ---------"
# Which Collection?

nest = {
  car3: {
    type: 'sedan',
    color: 'blue',
    year: 2003
  }
}
puts nest

# misunderstood ask, ARRAY not nested hash... 

car = [[:type, 'sedan'], [:color, 'blue'], [:year, 2003]]
puts "-------- 1 ---------"
# Repeat after me

puts "Please type something"
answer = gets.chomp #dont need .chomp, although is nice b/c removes the newline character at the end of strings
puts answer

puts "-------- 2 ---------"
# Your Age in Months

puts "What is your age (in years)?"
response = gets.chomp.to_i
response_months = response * 12
puts "You are #{response_months} months old"



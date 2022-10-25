puts "----------- 1 -----------"
# Breakfast, Lunch, or Dinner?, part 1

def meal 
  return 'Breakfast'
end

puts meal 
# hmm, there are no arguments so the meal method will always return the string Breakfast

puts "----------- 2 -----------"
# Breakfast, Lunch, or Dinner?, part 2

def meal2 
  'Evening'
end

puts meal2 

# similar to exercise 1, meal2 will always return the string Evening. the return is implicit 

puts "----------- 3 -----------"
# Breakfast, Lunch, or Dinner?, part 3

def meal3 
  return 'Breakfast'
  'Dinner'
end

puts meal3 

# will always return the string breakfast and method wont even look at subsequent lines

puts "----------- 4 -----------"
# Breakfast, Lunch, or Dinner?, part 4

def meal4
  puts 'Dinner'
  return 'Breakfast'
end 

puts meal4

# the code will print Dinner, ie the output will be dinner, but the return value will be breakfast # answer is that will actually print both, and return value is just breakfast

puts "----------- 5 -----------"
# Breakfast, Lunch, or Dinner?, part 5

def meal5 
  'Dinner'
  puts 'Dinner'
end

p meal5

# this is a trickier one... will it return Dinner on line 50 and not even look at line 51? ie is it still an implicit return if there are more lines.. i think that will print Dinner 2x ... # answer -- incorrect. will print dinner nil bc only evals line 51 and the return value of a puts is always nil

puts "----------- 6 -----------"
# Breakfast, Lunch, or Dinner?, part 6

def meal6
  return 'Breakfast'
  'Dinner'
  puts 'Dinner'
end

puts meal6 

# wont eval lines 63 or 64 as they are after the return, so will print and return 'Breakfast'

puts "----------- 7 -----------"
# Counting Sheep, part 1

def count_sheep 
  5.times do |sheep|
    puts sheep 
  end
end

puts count_sheep 

# i think will return an error because sheep is not in string form and therefore the method will read it as an undefined variable # answer -- !!!! was wrong.. because of the |sheep|, this is read as a parameter and return an integer, therefore this code will print 
# 0 
# 1
# 2
# 3
# 4
# 5
#We're using Integer#times within the count_sheep method to count from 0 to 4 (#times starts at 0). Therefore, it's no surprise that the output includes 0 through 4. What may be surprising, however, is the fact that the output includes 5. Where did that 5 come from? If you study #times in the Ruby docs, you'll know that after iterating 5 times, the block returns the initial integer. Which, in this case, is 5.

# We can use this knowledge combined with what we learned from the previous exercises to determine why 5 was printed. When looking at count_sheep we can see that the #times block is the only code in the method. This means it's also the last line in the method. Since #times returns the initial integer, we now know that the return value of count_sheep is 5.

puts "----------- 8 -----------"
# Counting Sheep, part 2

def count_sheep2 
  5.times do |sheep|
    puts sheep 
  end
  10
end

puts count_sheep2 

# this is almost the same as the previous method, with the difference being that ruby now returns 10 rather than 5 bc there are additional lines in the method, or at least thats what i suspect, i think will return 
# 0 
# 1
# 2
# 3
# 4
# 10

#was correct

puts "----------- 9 -----------"
# Counting Sheep, part 3

def count_sheep3 
  5.times do |sheep|
    puts sheep 
    if sheep >= 2 
      return 
    end
  end
end

p count_sheep3

# my guess..
# 0
# 1 
# 2
# 5

#answer 
# 0 
# 1
# 2
# nil # the reason why the return value is nil rather than 5 is bc the return line did not contain an explicit return value

puts "----------- 10 -----------"
# Tricky Number

def tricky_number 
  if true
    number = 1
  else
    2
  end
end

puts tricky_number

# answer ... 1



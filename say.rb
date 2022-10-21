puts 'hello'
puts 'hi'
puts 'how are you'
puts "I'm fine"

def say(words)
  puts words
end

puts 'SAY results'
puts say("hello")

def say2(words)
  puts words + '.'
end

puts 'SAY2 results'
puts say2("period")

def say3(words='hello') # hello is now the default parameter
  puts words + '.'
end

puts 'SAY3 results'
puts say3()
puts say3('hi')
puts say3 'test'


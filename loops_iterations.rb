#Looping with Ruby - loops & iterations
#while loop
counter = 1
while counter < 11
  puts counter
  counter = counter + 1
end

#until
counter = 1
until counter > 10
  puts counter
  # Add code to update 'counter' here!
  counter = counter + 1
end

# use assignment operator
counter = 1
while counter < 11
  puts counter
  counter += 1
end

#inclusive and exclusive ranges
for num in 1..15 #includes the number 15 
  puts num
end

#iterator - a Ruby method that repeatedly invokes a block of code
i = 20
loop do
  i -= 1
  print "#{i}"
  break if i <= 0
end

#print only even numbers
i = 20
loop do
  i -= 1
  next if i % 2 > 0 #odd number
  print "#{i}"
  break if i <= 0
end

#basic array
my_array = [1, 2, 3, 4, 5]

#.each method
array = [1,2,3,4,5]

array.each do |x|
  x += 10
  print "#{x}"
end

#  another .each example
odds = [1,3,5,7,9]

odds.each do |x|
  x *= 2
  print "#{x}"
end

# .times iterator
10.times {puts "Go Storm!"}

# print out the numbers 1-50 inclusive
counter = 1
while counter <= 50
  print counter
  counter +=1
end
# Convert a string to an integer using the method .to_i
variable = variable.to_i











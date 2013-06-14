# Methods, Blocks and Sorting

def prime(n)
  puts "That's not an integer." unless n.is_a? Integer
  is_prime = true
  for i in 2..n-1
    if n % i == 0
      is_prime = false
    end
  end
  if is_prime
    puts "#{n} is prime!"
  else
    puts "#{n} is not prime."
  end
end

prime(2)
prime(9)
prime(11)
prime(51)
prime(97)

=begin  Method syntax
1. The header, which includes the def keyword, the name of the method, and any arguments the method takes. 
2. The body, which is the code block that describes the procedures the method carries out. The body is indented two spaces by convention (as with for, if, elsif, and else statements)
3. The method ends with the end keyword.
=end

def puts_1_to_10
  (1..10).each { |i| puts i }
end

puts_1_to_10 

# Method to print the alphabet
def alphabet
  ("a".."z").each { |letter| puts letter}
end

puts alphabet

# Paarameters & Arguments -
# Method to square a number

def square_num(n)
  puts n ** 3
end

square_num(8)

# Splat!
def what_up(greeting, *bros)
  bros.each { |bro| puts "#{greeting}, #{bro}!" }
end
 
what_up("What up", "Justin", "Ben", "Kevin Sorbo")

# Return a value from a method
def add(n1,n2)
  return n1 + n2
end  

=begin

A by_three? method that takes a single integer parameter, number, 
and returns true if that number is evenly divisible by three and false if not. 
Remember, it's a Ruby best practice to end method names 
that produce boolean values with a question mark.

=end

def by_three?(number)
  if number % 3 == 0
    return true
  else
    return false
  end
end  

# Method that capitalizes a word
def capitalize(string) 
  puts "#{string[0].upcase}#{string[1..-1]}"
end

capitalize("ryan") # prints "Ryan"
capitalize("jane") # prints "Jane"

# block that capitalizes each string in the array
["ryan", "jane"].each {|string| puts "#{string[0].upcase}#{string[1..-1]}"} 
# prints "Ryan", then "Jane"

# The block, {|i| puts i}, is passed the current
# array item each time it is evaluated. This block
# prints the item. 
[1, 2, 3, 4, 5].each { |i| puts i }

# This block prints the number 5 for each item.
# (It chooses to ignore the passed item, which is allowed.)
[1, 2, 3, 4, 5].each { |i| puts 5 }

#Square each values in an array
my_array = [1, 2, 3, 4, 5]

my_array.each { |i| puts i ** 2}

# Alphabetizer Method
def alphabetize(arr, rev=false)
  if rev
    arr.sort { |item1, item2| item2 <=> item1 }
  else
    arr.sort { |item1, item2| item1 <=> item2 }
  end
end

books = ["Heart of Darkness", "Code Complete", "The Lorax", "The Prophet", "Absalom, Absalom!"]

puts "A-Z: #{alphabetize(books)}"
puts "Z-A: #{alphabetize(books, true)}"

#








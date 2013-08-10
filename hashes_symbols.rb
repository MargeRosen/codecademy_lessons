# Hashes and Symbols - Intro to Ruby
# Access a key in a hash that doesn't exist for nil
creatures = { "weasels" => 0,
  "puppies" => 6,
  "platypuses" => 3,
  "canaries" => 1,
  "Heffalumps" => 7,
  "Tiggers" => 1
}
 # creatures[x] means that you're calling the creatures hash 
 # and asking it to tell you the value associated with key "x"
  creatures["kittens"]  

# -   -   -   -   -   -  
#  create your hash using the Hash.new syntax, you can specify a default 
no_nil_hash = Hash.new("empty hash")

no_nil_hash["eggs"]

# -   -   -   -   -   -  
=begin  

Symbols aren't Strings!

there can be multiple different strings that all have the same value, but
there's only one copy of any particular symbol at a given time.

The .object_id method gets the ID of an object. 
it's how Ruby knows whether two objects are the exact same object
=end

# Convert an array of strings to an array of hash keys as symbols
strings = ["HTML", "CSS", "JavaScript", "Python", "Ruby"]

symbols = Array.new

strings.each do |x|
  symbols.push(x.to_sym) #to_sym converts strings to symbols, 
#  .push moves the converted symbol to the new array
end 

# -   -   -   -   -   -  
#Ruby 1.9 symbols - put the colon at the end of the symbol, not at the beginning;
# You don't need the hash rocket anymore.
 truman_show: 4,
 red_dawn: 1.5,
 skyfall: 4,

=begin      -   -   -   -   -   -  
builds two alphabet hashes: 
 one that pairs string letters with their place in the alphabet 
 ( "a" with 1, "b" with 2...) and one that 
 uses symbols (:a with 1, :b with 2...). 
 We'll look up the letter "r" 100,000 times to see which process runs faster!
 require 'benchmark'
=end

string_AZ = Hash[("a".."z").to_a.zip((1..26).to_a)]
symbol_AZ = Hash[(:a..:z).to_a.zip((1..26).to_a)]

string_time = Benchmark.realtime do
  100_000.times { string_AZ["r"] }
end

symbol_time = Benchmark.realtime do
  100_000.times { symbol_AZ[:r] }
end

puts "String time: #{string_time} seconds."
puts "Symbol time: #{symbol_time} seconds."

=begin
	
The .select method takes a block consisting of a key/value pair 
and an expression for selecting matching keys and values
	
=end
movie_ratings = {
  memento: 3,
  primer: 3.5,
  the_matrix: 3,
  truman_show: 4,
  red_dawn: 1.5,
  skyfall: 4,
  alex_cross: 2,
  uhf: 1,
  lion_king: 3.5
}

good_movies = movie_ratings.select { |k, v| v >3}


# Ruby includes two hash methods, .each_key and .each_value, 

my_hash = { one: 1, two: 2, three: 3 }

my_hash.each_key { |k| print k, " " }
# ==> one two three

my_hash.each_value { |v| print v, " " }
# ==> 1 2 3







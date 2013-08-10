#    Yield
# Methods that accept blocks have a way of transferring control 
# from the calling method to the block and back again. 
# We can build this into the methods we define by using the yield keyword.

def block_test
  puts "We're in the method!"
  puts "Yielding to the block..."
  yield                              # >>> We're in the block!
  puts "We're back in the method!"
end

block_test { puts ">>> We're in the block!" }

# You can also pass parameters to yield!

def yield_name(name)
  puts "In the method! Let's yield."
  yield name
  puts "Block complete! Back in the method."
end

yield_name("Marge") { |name| puts "My name is #{name}." }



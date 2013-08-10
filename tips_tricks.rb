# Tips & Tricks

# Write a loop that only puts the even values of my_array useing a one-line if!

my_array = [1, 2, 3, 4, 5, 6, 7, 8, 9, 10]

my_array.each { |x| puts x if x % 2 == 0 }

# .upto and .downto works on numbers and the alphabet

"L".upto("P") { |letter| puts letter} # shows the letters L thru P only
95.upto(100) { |num| print num, " " } # Prints 95 96 97 98 99 100
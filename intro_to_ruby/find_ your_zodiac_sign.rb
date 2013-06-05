# Find your zodiac sign 
print "What is your zodiac sign?  Please enter the month of your birth (mm):"
month = gets.chomp!
month = month.to_i

if month  <= 12
      print "Please enter the day of your birth (dd):"
      day = gets.chomp!
      day = day.to_i
      if day <=31
        # do a loop to find zodiac sign, then
        zodiac = ""
        puts "You are #{zodiac}"
      else
        print "Please enter a valid day of the month (dd)"
      end
else
    print "Please enter a valid number"
end
print "I'm Geminii, nice to meet you!"
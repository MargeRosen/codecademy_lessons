# Find your zodiac sign 

print "What is your zodiac sign?  Please enter the month of your birth (mm):"
month = gets.chomp!
month = month.to_i

if month  <= 12
      print "Please enter the day of your birth (dd):"
      day = gets.chomp!
      day = day.to_i
      if day >31
        print "Please enter a valid day of the month (dd)"   
      end
else
    print "Please enter a valid number"
end

if month == 1 
  if day = [1..19]
    zodiac = "Capricorn"
  else
    zodiac = "Aquarius"
  end   
elsif month == 2
  if day = [1..18]
    zodiac = "Aquarius"
  else
    zodiac = "Pices" 
  end   
elsif month == 3
  if day = [1..19]
    zodiac = "Pices"
  else
    zodiac = "Aries"
  end   
elsif month == 4
  if day = [1..19]     
    zodiac = "Aries"
  elsif 
    zodiac = "Taurus"
  end  
elsif month == 5
  if day = [1..20]
    zodiac = "Taurus"
  else
    zodiac = "Gemini"
  end  
elsif month == 6
  if day = [1..20]
    zodiac = "Gemini"
  else
    zodiac = "Cancer"
  end   
elsif month == 7
  if day = [1..22]
    zodiac = "Cancer" 
  else
    zodiac = "Leo"
  end  
elsif month == 8
  if day = [1..22]
    zodiac = "Leo"
  else
    zodiac = "Virgo"
  end  
elsif month == 9
  if day = [1..22]
    zodiac = "Virgo"
  else
    zodiac = "Libra"
  end   
elsif month == 10     
  if day = [1..21]
    zodiac = "Libra" 
  else
    zodiac = "Scorpio"
  end  
elsif month == 11
  if day = [1..21]
    zodiac = "Scorpio"
  else
    zodiac = "Sagittarius" 
  end
elsif month == 12
  if day = [1..21] 
    zodiac = "Sagittarius"
  else      
    zodiac = "Capricorn"
  end
else             
  puts "Month entered is invalid"
end

puts "You are " + zodiac
puts "This program was born June 12 so I'm Gemini"
puts "Nice to meet you!"

  

#Daffy Duckifying a string
print "Thtring, pleathe!: "
user_input = gets.chomp
user_input.downcase!

if user_input.include? "s"
  user_input.gsub!(/s/, "th")
else
  puts "Nothing to do here!"
end
  
puts "Your string is: #{user_input}"

#get user input, then search for the letter "s"
print "please enter your birthdate"
user_input = gets.chomp
user_input.downcase!

if user_input.include? "s"
    print user_input
else
    print "Letter S not found"
end

#get user input, then search for the letter "s"
print "please enter a sentance"
user_input = gets.chomp
user_input.downcase!

if user_input.include? "s"
    user_input.gsub!(/s/, "th")
    puts "Crazy duck says, #{user_input}!"
else
    print "Letter S not found"
end

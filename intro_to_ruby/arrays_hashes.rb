puts "Enter text here:"
text = gets.chomp
puts "Enter more text"
redact = gets.chomp
words = text.split(",")
words.each do |word| 
    if word != redact
        print "#{word}" + " "
    else
        redact = redact.split(",")
        redact.each do |redacted|
                if redacted == true
                print "#{redacted}" + " "
            else
                print "bug alert!"
        end    
    end 
#- - - - - - - - - - - - - - - - - - -
    puts "Text to search through: "
text = gets.chomp
puts "Word to redact: "
redact = gets.chomp

words = text.split(" ")

words.each do |word|
  if word != redact
    print word + " "
  else
    print "REDACTED "
  end
end



puts "Enter text here:"
text = gets.chomp
puts "Enter text to redact:"
redact = gets.chomp
words = text.split(",")
words.each do |word| 
    if word != redact
        print word + " "
    else
        print "redacted!"
    end    
end



friends = ["Milhouse", "Ralph", "Nelson", "Otto"]

family = { "Homer" => "dad",
  "Marge" => "mom",
  "Lisa" => "sister",
  "Maggie" => "sister",
  "Abe" => "grandpa",
  "Santa's Little Helper" => "dog"
}

friends.each { |x| puts "#{x}" }
family.each { |x, y| puts "#{x}: #{y}" }

# -  -  -  -  -  -  -  

languages = ["HTML", "CSS", "JavaScript", "Python", "Ruby"]

languages.each { |code| puts "#{code}"}

# -  -  -  -  -  -  - 

secret_identities = { "The Batman" => "Bruce Wayne",
  "Superman" => "Clark Kent",
  "Wonder Woman" => "Diana Prince",
  "Freakazoid" => "Dexter Douglas"
}
  
secret_identities.each do |hero, identity|
    puts "#{hero}: #{identity}"
end
# -  -  -  -  multi dimensional array & hash  -   -  -   -  -   -     
my_array= [["Capricorn", "Dec 22 through 31"],
  ["Sagitarius", "Dec 1 through 21"]]

my_hash = {"Capricorn" => "Dec 22 through 31", 
    "Sagitarius" => "Dec 1 through 21"}


lunch_order = { "Ryan" => "wonton soup",
  "Eric" => "hamburger",
  "Jimmy" => "sandwich",
  "Sasha" => "salad",
  "Cole" => "taco"
}

lunch_order.each do |name, food|
  puts food
  end    

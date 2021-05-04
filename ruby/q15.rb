raining = gets.chomp.downcase
temperature = gets.chomp.to_i

raining == "yes" ? raining = true : raining = false

if raining == true && temperature < 15
    puts "It's wet and cold"
elsif raining == false && temperature < 15
    puts "it's not raining but cold"
elsif raining == false && temperature >= 15
    puts "It's warm but not raining"
else
    puts "It's warm and raining"
end
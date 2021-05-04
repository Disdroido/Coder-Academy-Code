flextrack = ["nick", "rory"]
puts "flextrack= #{flextrack}"

# when you try to capitalize the third element you must return invalid value as a message and not throw an error

puts "What name do you want to capitalise (choose 0, 1, 2 ...)"

index = gets.chomp.to_i

flextrack[index] ? (puts flextrack[index].capitalize) : (puts "that is an invalid choice")
puts "How old are you?"
age = gets.to_i

puts "Are you a citizen?"
citizen = gets.chomp

citizen == "yes" ? citizen = true : citizen = false

(age >= 18 && citizen == true) ? (puts "You are eligible to vote!") : (puts "You are ineligible to vote!")
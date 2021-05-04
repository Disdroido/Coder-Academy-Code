# puts "What is the weather today?"
# temp = gets.chop.to_i

# case temp
# when temp < 15
#     puts "It's too cold"
# when 15..28
#     puts "It's beautiful today"
# when temp > 28
#     puts "It's too hot"
# else
#     puts "Invalid"
# end

# Your code here
# print = "What is the weather today?"

# weather = gets.chop

# if weather.between?("15", "28")
#     puts "What's the weather today?\nIt's beautiful today"
# end

# if weather <= "15"
#     puts "What's the weather today?\nIt's too cold"
# end

# if weather > "28"
#     puts "What's the weather today?\nIt's too hot"
# end

puts "What's the weather today?"
capacity = gets.chop.to_i
case capacity

when 0..15
    puts "It's too cold"
when 15..28
    puts "It's beautiful today"
else
    puts "It's too hot"
end
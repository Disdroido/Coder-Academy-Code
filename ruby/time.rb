puts "What time is it?"
time = gets.chomp.to_i
case time
    when 7..11
    print("Good morning!\n")
    when 12
    print("Lunchtime\n")
    when 13..18
    print("Afternoon blues\n")
    when 19, 20
    print("Dinnertime\n")
    when 21..23, 0..6
    print("Sleepy time\n")
    when (...0), (24...)
    print("That is not correct 24hr time!\n")
end
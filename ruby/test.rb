commonPasswords = ["password", "Password1", "123456"]
commonPasswords.map {|password| 
    puts "This password is commonly used, so don't use it yourself: #{password}"
}

commonPasswords.map! {|password|
    # Deciphering each segment of this string could be an activity on its own ;) 
    newPassword = "#{password}#{rand(100..999)}#{('a'..'z').to_a.sample(2).join()}"
    puts "This password is now updated to be more-secure: #{newPassword}"

    # This is an implicit return, meaning it's like saying "password=newPassword"
    newPassword
}

puts "All of the passwords have been updated!"
puts commonPasswords
# Write a program to implement a simple bank account. 

def banking_app
	# Your code here.
	print "Please enter your password\n"
	password = gets.chomp

	if password == "12345"
        balance = Array.new

        def balance(balance)
            puts "\nYour balance is $#{balance.sum}\n"
            puts welcome(balance)
        end

        def deposit(balance)
            puts "\nHow much would you like to deposit?"
            input = ''
            input = gets.chomp.to_i
            puts = "You are depositing $#{input}"
            balance.push input
            puts balance(balance)
        end

        def widthdraw(balance)
            puts "\nHow much would you like to widthdraw?\n"
            input = ''
            input = gets.chomp.to_i
            if balance.sum < input
                puts error

            else
                puts "\nYou have chosen to widthdraw $#{input}\n"
                balance.push -input
                puts balance(balance)
            end
        end

        def exit
            puts "\nThank you for banking with us!"
        end

        def error
            puts "Error please try again!"
        end

        def clear
            system ("clear")
        end

        def welcome(balance)
            puts "\nWelcome to the banking app!\nPlease sellect a task:\n'balance', 'deposit', 'widthdraw', 'exit'"

            response = gets.chomp.downcase

            case response
            when "balance"
                balance(balance)
            when "deposit"
                deposit(balance)
            when "widthdraw"
                widthdraw(balance)
            when "exit"
                exit
            else
                clear
                error
                welcome(balance)
            end
        end

        puts welcome(balance)

	else
		puts "Wrong password!"
	end

end

banking_app
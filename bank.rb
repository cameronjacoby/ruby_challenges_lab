# Challenge 4 - Bank Transactions

# Create a prompt that asks the user if they would like to display their balance, withdraw or
# deposit. Write three methods to perform these calculations and output the result to the user.
# Here is a sample output:

#   Your current balance is
#   4000
#   What would you like to do? (deposit, withdraw, check_balance)
#   deposit
#   How much would you like to deposit?
#   1000
#   Your current balance is 5000
#   Are you done?
#   yes
#   Thank you!


def bank(balance)
  balance = balance.to_f
  puts "Your current balance is " + "#{balance}"

  puts "What would you like to do? (deposit, withdraw, check balance)"
  response = gets.chomp

  if response == "deposit"
    puts "How much would you like to deposit?"
    deposit = (gets.chomp).to_f
    balance = balance + deposit
    puts "Your current balance is " + "#{balance}"

  elsif response == "withdraw"
    puts "How much would you like to withdraw?"
    withdrawal = (gets.chomp).to_f
    balance = balance - withdrawal
    puts "Your current balance is " + "#{balance}"

  elsif response == "check balance"
    puts "Your current balance is " + "#{balance}"
  end

  puts "Are you done?"
  done_res = gets.chomp

  if done_res == "yes"
    puts "Thank you!"

  elsif done_res == "no"
    bank(balance)
  end

end


bank(500)
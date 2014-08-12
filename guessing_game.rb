# Challenge 5 - Guessing Game

# Create a program that asks the user to guess a number between 1 and 100.
# Once the user guesses a number, the program should say, higher, lower, or
# tell the user that he got the number correct. The user should continue to
# make guesses until he guesses correctly. Also, once the user guesses correctly,
# the program should print the number of guesses needed to arrive at the correct answer.
# Below is sample output:

#   Guess a number between 1 and 100
#   50
#   The number is lower than 50.  Guess again
#   25
#   The number is lower than 25.  Guess again
#   13
#   The number is higher than 13.  Guess again
#   20
#   The number is lower than 20.  Guess again
#   17
#   The number is higher than 17.  Guess again
#   18
#   The number is higher than 18.  Guess again
#   19
#   You got it in 7 tries


def guess(num)
  num = num.to_i
  count = 0
  puts "Guess a number between 1 and 100."

  guess = (gets.chomp).to_i
  count += 1

  def conditions(num, guess, count)
    if num < guess
      puts "The number is lower than " + "#{guess}" + ". Guess again."
      guess = (gets.chomp).to_i
      count += 1
      conditions(num, guess, count)

    elsif num > guess
      puts "The number is higher than " + "#{guess}" + ". Guess again."
      guess = (gets.chomp).to_i
      count += 1
      conditions(num, guess, count)

    else
      if count == 1
        puts "#{guess}" + " is correct! You got it in " + "#{count}" + " try."

      else
        puts "#{guess}" + " is correct! You got it in " + "#{count}" + " tries."
      end

    end

  end

  conditions(num, guess, count)

end


guess(58)
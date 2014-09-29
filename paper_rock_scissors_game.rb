# Paper Rock Scissors!
#
# Rules:  Rock beats scissors; scissors beat paper; paper beats rock.
#
# Steps:
# => 1.  Randomly choose R, P or S
# => 2.  Ask the user to choose R, P, or S
# => 3.  Apply the rule to see who win or tie
# => 4.  Ask user wants to play again.
# => 4.1  If yes, return to Step 1
# => 4.2  If no, exit game.
#

require 'pry'

def choose
  input = ""

  while input != "P" && input != "R" && input != "S" do
    puts "Choose one: (P/R/S)"
    input = gets.chomp.upcase
  end
  return input
end

def say(sentence)
  puts "#{sentence}"
end

# Init some variables
choices = ['P', 'R', 'S']
choices_h = {'P' => 'Paper', 'R' => 'Rock', 'S' => 'Scissors'}
user_choice = ""
computer_choice = ""
continue = "Y"

while continue == "Y" do
  computer_choice = choices[rand(3)]
  user_choice = choose
  say "You picked #{choices_h[user_choice]} and computer picked #{choices_h[computer_choice]}."
  
  case
    when computer_choice == user_choice
      say "It's a tie!"
    when computer_choice == 'R'
      if user_choice == 'S'
          say "Computer won!"
      else
        say "You won!"
      end
    when computer_choice == 'P'
      if user_choice == 'R'
          say "Computer won!"
      else
        say "You won!"
      end
    when computer_choice == 'S'
      if user_choice == 'P'
          say "Computer won!"
      else
        say "You won!"
      end
    end
    say "Play again? (Y/N)"
    continue = gets.chomp.upcase
    #binding.pry
end
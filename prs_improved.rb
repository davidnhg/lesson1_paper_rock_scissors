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

CHOICES = {'P' => 'Paper', 'R' => 'Rock', 'S' => 'Scissors'}

def choose
  input = ""

  begin
    puts "Pick one: (P,R,S)"
    input = gets.chomp.upcase
  end until CHOICES.keys.include?(input)

  return input
end

def say(sentence)
  puts "#{sentence}"
end

# Init some variables
user_choice = ""
computer_choice = ""
continue = "Y"

while continue != "N" do
  computer_choice = CHOICES.keys.sample
  user_choice = choose
  say "You picked #{CHOICES[user_choice]} and computer picked #{CHOICES[computer_choice]}."
  
  case
    when computer_choice == user_choice
      say "It's a tie!"
    when (computer_choice == 'R' && user_choice == 'S') || (computer_choice == 'P' && user_choice == 'R') || (computer_choice == 'S' && user_choice == 'P')
      say "Computer won!"
    else
      say "You won!"
    end

    begin
      say "Play again? (Y/N)"
      continue = gets.chomp.upcase
    end until (continue == "Y" || continue == "N")
end
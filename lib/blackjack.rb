$score = 0

def welcome
  # code #welcome here
  puts "Welcome to the Blackjack Table"
end

def deal_card
  # code #deal_card here
  rand(1..11)
end

def display_card_total(number)
  # code #display_card_total here
  puts "Your cards add up to #{number}"
  number
end

def prompt_user
  # code #prompt_user here
  puts "Type 'h' to hit or 's' to stay"
end

def get_user_input
  # code #get_user_input here
  gets.chomp
end

def end_game(card_total)
  # code #end_game here
  puts "Sorry, you hit #{card_total}. Thanks for playing!"
end

def initial_round
  # code #initial_round here
  total = 0
  2.times do
    total +=deal_card
  end
  display_card_total(total)
end

def hit?(total)
  # code hit? here
    prompt_user
    input = get_user_input
   until input == 'h' || input == 's'
      invalid_command
      input = get_user_input
    end
  if input=='h'
    total+=deal_card
  elsif input=='s'
    total
  end
end

def invalid_command
  # code invalid_command here
  puts "Please enter a valid command"
end


#####################################################
# get every test to pass before coding runner below #
#####################################################

def runner
  # code runner here
  welcome
  score=initial_round
  until score>21
  score=hit?(score)
  display_card_total(score)
  end
    end_game(score)
end
    

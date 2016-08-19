def welcome
  puts "Welcome to the Blackjack Table"
end

def deal_card
  rand(1..11)
  # code #deal_card here
end

def display_card_total(total)
  puts "Your cards add up to #{total}"
  return total
end



def prompt_user
  # code #prompt_user here
  puts "Type 'h' to hit or 's' to stay"
end

def get_user_input
  # code #get_user_input here
  gets.chomp
end

def end_game(total)
  # code #end_game here
  puts "Sorry, you hit #{total}. Thanks for playing!"
end

def initial_round
  card1 = deal_card
  card2 = deal_card

 return display_card_total(card1 + card2)
end

def hit?(total)
  prompt_user
  store = get_user_input 

  if store == 's'
   return total 
  elsif store == 'h'
    total = total + deal_card
  else 
    invalid_command 
end
end

def invalid_command
  # code invalid_command here
end

#####################################################
# get every test to pass before coding runner below #
#####################################################

def runner
  welcome 
  total = initial_round
  if total <= 21
    total = hit?(total)
    display_card_total(total)
  end
  end_game(total)
end

    



class Controller

  self.run
    system('clear')
    View.welcome_and_initial_input
    Model.generate_deck
    until @input == "exit"
      system('clear')
      @current_card = Model.pick_a_card
      View.display_description(@current_card)
      @input = View.get_game_input
      check_answer(@input)
      break if Model.deck_empty?
    end
    system('clear')
    View.display_bye_msg
  end

  self.check_answer(input)
    if input == "exit"
      return
    elsif input == @current_card.answer
      View.display_congrats
      gets.chomp
    else
      View.display_try_again
      @input = View.get_game_input
      check_answer(@input)
  end

end


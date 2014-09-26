

class Controller

  def self.run
    system('clear')
    View.welcome_message
    Model.generate_deck
    until @input == "exit"
      system('clear')
      @current_card = Model.pick_a_card
      View.display_definition_to_user(@current_card)
      @input = View.get_user_input
      check_answer(@input)
      break if Model.check_if_deck_empty?
    end
    system('clear')
    View.display_exit_message
  end

  def self.check_answer(input)
    if input == "exit"
      return
    elsif input == @current_card.answer
      View.congratulations_message
      gets.chomp
    else
      View.try_again_message
      @input = View.get_user_input
      check_answer(@input)
    end
  end

end


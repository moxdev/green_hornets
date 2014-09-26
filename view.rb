require 'colorize'
# Flash Card View
class View
  attr_accessor :user_input

  def self.welcome_message
    puts "Welcome to Flash Cards with your Superego!"
    puts "__________________________________"
    puts "Here are the instructions:"
    puts "To play, hit enter to start and just enter the correct term for each definition"
    puts "Type 'exit' to quit the program."
    puts "Yo. Yo. You ready?"
    `say "Welcome to Flash Cards with your Superego!"`
    `say "Yo. Yo. You ready?"`

    @user_input = gets.chomp
    if @user_input.length == 0
      puts "Let's get this started"
      puts "Here is your first question"
    else
      welcome_message
    end
  end


  def self.display_definition_to_user(card)
    puts card.definition
    `say -v "Bad News" "Don't be nervous. Everybody looking at you so they will finally realize how inept you are!"`    
  end

  def self.get_user_input
    @user_input = gets.chomp
  end

  def self.congratulations_message
    puts "Great job! Ready for next question? Hit enter.".green
    `say -v "Good News" "Great job! Ready for next question? Hit enter."`
  end

  def self.try_again_message
    puts "Come on, focus my son.  You can do better.  Superego is talking to you. Guess again.".red
    `say -v "Bad News" "Come on, focus my son.  You can do better.  Superego is talking to you. Guess again."`
  end


  def self.display_exit_message
    puts "Thanks for playing!  You are on the path to become a Ruby ninja!"
    `say -v "Bad News" "Bye, bye. Eveybody knows now how stupid you are!"`
  end
end


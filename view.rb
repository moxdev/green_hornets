# Flash Card View
class View
  attr_accessor :user_input

  def self.welcome_message
    puts "Welcome to the OG Ruby Flash Cards for Dummies!"
    puts "__________________________________"

    `say "Welcome to the OG Ruby Flash Cards for Dummies!"`
    puts "To play, hit enter to start and just enter the correct term for each definition"
    puts "Type 'exit' to quit the program."
    puts "Yo. Yo. You ready?"
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
  end

  def self.get_user_input
    @user_input = gets.chomp
  end

  def self.congratulations_message
    puts "Great job! Ready for next question?"
  end

  def self.try_again_message
    puts "Common, focus my son.  You can do better.  Superego is talking to you."
    `say "Common, focus my son.  You can do better.  Superego is talking to you."`
  end


  def self.display_exit_message
    puts "Thanks for playing!  You are on the path to become a Ruby ninja!"
    `say "Thanks for playing!  You are on the path to become a Ruby ninja!"`
  end
end


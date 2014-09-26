# Flash Card View

class View

  attr_reader :user_input

  def self.display_welcome

    puts "Welcome to the OG Ruby Flash Cards for Dummies!"
    `say "Welcome to the OG Ruby Flash Cards for Dummies!"`


    puts "To play, hit enter to start and just enter the correct term for each definition"
    puts "Type 'exit' to quit the program."
    puts "Yo. Yo. You ready?"
    `say "Yo. Yo. You ready?"`

    get_user_input

    if @user_input.length == 0   # user is ready to play game
      puts "Let's get this started"
      puts "Here is your first question"
      Model.pick_question
    elsif @user_input == "exit"
      thanks_goodbye
    else
      display_welcome
    end

  end

  def self.get_user_input
    @user_input = gets.chomp
  end

  def self.get_question
    Model.pick_question
  end

  def self.display_congrats
    puts "Great job! Ready for next question?"
  end

  def self.thanks_goodbye
    puts "Thanks for playing!  You are on the path to become a Ruby ninja!"
    `say "Thanks for playing!  You are on the path to become a Ruby ninja!"`
  end

  def self.try_again
    puts "Common, focus my son.  You can do better.  Superego is talking to you."
    `say "Common, focus my son.  You can do better.  Superego is talking to you."`
  end

end

# Driver code
View.display_welcome
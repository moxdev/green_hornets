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
    `say -v "Alex" "Don't be nervous. You are already the dumbest person in the room so it can't get any worse!"`
  end

  def self.get_user_input
    @user_input = gets.chomp
  end

  def self.congratulations_message
    puts "Great job! Ready for next question? Hit enter.".green
    `say -v "Alex" "Great job! Ready for next question? Hit enter."`

    puts <<-BOSS
      ,-------.
    ,'         `.
    : You A Boss :
    :   Son!     :
    '.         ,'
      `._____,'
          ||
        _,''--.    _____
       (/ __   `._|
      ((_/_)\     |
       (____)`.___|
        (___)____.|_____
          ||         SSt
        _\||/_

            _
           /(|
          (  :
         __\  \  _____
       (____)  `|
      (____)|   |
       (____).__|
        (___)__.|_____
                   SSt
 BOSS

  end

  def self.try_again_message
    puts "Come on, focus my son.  You can do better.  Superego is talking to you. Guess again rookie.".red
    `say -v "Alex" "Come on, focus my son.  You can do better.  Superego is talking to you. Guess again rookie."`

    puts "┌∩┐(◣_◢)┌∩┐"
    puts "╭∩╮(Ο_Ο)╭∩╮"
    puts "╭∩╮（︶︿︶）╭∩╮"

  end


  def self.display_exit_message
    puts "Thanks for playing!  You are on the path to become a Ruby ninja!"
    `say -v "Alex" "Bye, bye. Now everyone knows how stupid you are!"`

    puts <<-SKULL
                           ...----....
                         ..-:"''         ''"-..
                      .-'                      '-.
                    .'              .     .       '.
                  .'   .          .    .      .    .''.
                .'  .    .       .   .   .     .   . ..:.
              .' .   . .  .       .   .   ..  .   . ....::.
             ..   .   .      .  .    .     .  ..  . ....:IA.
            .:  .   .    .    .  .  .    .. .  .. .. ....:IA.
           .: .   .   ..   .    .     . . .. . ... ....:.:VHA.
           '..  .  .. .   .       .  . .. . .. . .....:.::IHHB.
          .:. .  . .  . .   .  .  . . . ...:.:... .......:HIHMM.
         .:.... .   . ."::"'.. .   .  . .:.:.:II;,. .. ..:IHIMMA
         ':.:..  ..::IHHHHHI::. . .  ...:.::::.,,,. . ....VIMMHM
        .:::I. .AHHHHHHHHHHAI::. .:...,:IIHHHHHHMMMHHL:. . VMMMM
       .:.:V.:IVHHHHHHHMHMHHH::..:" .:HIHHHHHHHHHHHHHMHHA. .VMMM.
       :..V.:IVHHHHHMMHHHHHHHB... . .:VPHHMHHHMMHHHHHHHHHAI.:VMMI
       ::V..:VIHHHHHHMMMHHHHHH. .   .I":IIMHHMMHHHHHHHHHHHAPI:WMM
       ::". .:.HHHHHHHHMMHHHHHI.  . .:..I:MHMMHHHHHHHHHMHV:':H:WM
       :: . :.::IIHHHHHHMMHHHHV  .ABA.:.:IMHMHMMMHMHHHHV:'. .IHWW
       '.  ..:..:.:IHHHHHMMHV" .AVMHMA.:.'VHMMMMHHHHHV:' .  :IHWV
        :.  .:...:".:.:TPP"   .AVMMHMMA.:. "VMMHHHP.:... .. :IVAI
       .:.   '... .:"'   .   ..HMMMHMMMA::. ."VHHI:::....  .:IHW'
       ...  .  . ..:IIPPIH: ..HMMMI.MMMV:I:.  .:ILLH:.. ...:I:IM
     : .   .'"' .:.V". .. .  :HMMM:IMMMI::I. ..:HHIIPPHI::'.P:HM.
     :.  .  .  .. ..:.. .    :AMMM IMMMM..:...:IV":T::I::.".:IHIMA
     'V:.. .. . .. .  .  .   'VMMV..VMMV :....:V:.:..:....::IHHHMH
       "IHH:.II:.. .:. .  . . . " :HB"" . . ..PI:.::.:::..:IHHMMV"
        :IP""HHII:.  .  .    . . .'V:. . . ..:IH:.:.::IHIHHMMMMM"
        :V:. VIMA:I..  .     .  . .. . .  .:.I:I:..:IHHHHMMHHMMM
        :"VI:.VWMA::. .:      .   .. .:. ..:.I::.:IVHHHMMMHMMMMI
        :."VIIHHMMA:.  .   .   .:  .:.. . .:.II:I:AMMMMMMHMMMMMI
        :..VIHIHMMMI...::.,:.,:!"I:!"I!"I!"V:AI:VAMMMMMMHMMMMMM'
        ':.:HIHIMHHA:"!!"I.:AXXXVVXXXXXXXA:."HPHIMMMMHHMHMMMMMV
          V:H:I:MA:W'I :AXXXIXII:IIIISSSSSSXXA.I.VMMMHMHMMMMMM
            'I::IVA ASSSSXSSSSBBSBMBSSSSSSBBMMMBS.VVMMHIMM'"'
             I:: VPAIMSSSSSSSSSBSSSMMBSSSBBMMMMXXI:MMHIMMI
            .I::. "H:XIIXBBMMMMMMMMMMMMMMMMMBXIXXMMPHIIMM'
            :::I.  ':XSSXXIIIIXSSBMBSSXXXIIIXXSMMAMI:.IMM
            :::I:.  .VSSSSSISISISSSBII:ISSSSBMMB:MI:..:MM
            ::.I:.  ':"SSSSSSSISISSXIIXSSSSBMMB:AHI:..MMM.
            ::.I:. . ..:"BBSSSSSSSSSSSSBBBMMMB:AHHI::.HMMI
            :..::.  . ..::":BBBBBSSBBBMMMB:MMMMHHII::IHHMI
            ':.I:... ....:IHHHHHMMMMMMMMMMMMMMMHHIIIIHMMV"
              "V:. ..:...:.IHHHMMMMMMMMMMMMMMMMHHHMHHMHP'
               ':. .:::.:.::III::IHHHHMMMMMHMHMMHHHHM"
                 "::....::.:::..:..::IIIIIHHHHMMMHHMV"
                   "::.::.. .. .  ...:::IIHHMMMMHMV"
                     "V::... . .I::IHHMMV"'
                       '"VHVHHHAHHHHMMV:"'
SKULL

  end
end




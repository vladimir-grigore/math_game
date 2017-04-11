require_relative 'questions'

module Math_game
  class Turn
    def initialize(player1, player2)
      @player1 = player1
      @player2 = player2
    end
    
    def play
      show_score
      puts "----- NEW TURN -----"
      play_turn @player1
      play_turn @player2
    end

    def play_turn(player)
      puts player.name
      question = Math_game::Questions.new
      question.generate_question
      player.lose_life unless question.check_answer
    end
    
    def show_score
      player1_lives, player2_lives = @player1.lives, @player2.lives
      puts "#{@player1.name}: #{player1_lives}/3 vs #{@player2.name}: #{player2_lives}/3"
    end
    
  end
end


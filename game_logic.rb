# start the game
# ask the determine the current player
# ask the math_question - correct or not
# if match is wrong, then take one life away from that player

class Game_Logic
  def initialize(player1, player2)
    @Player1 = player1
    @Player2 = player2
    @current = @Player1
  end

  def start_game
    while (@Player1.life > 0 && @Player2.life > 0)
      question = Math_Question.new
      if @current == @Player1
        if !question.ask_question(@current)
          @current.remove_life
        end
        @current = @Player2
      else
        if !question.ask_question(@current)
          @current.remove_life
        end
        @current = @Player1
      end
    end
  end
end
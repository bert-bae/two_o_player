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

  def end_game(player)
    puts "----------- Game Over ------------"
    if @current == @Player1
      @current == @Player2
    else
      @current == @Player1
    end
    puts "Game over! #{@current.name} won and has #{@current.life} point(s) left."
  end

  def start_game
    while (@Player1.life > 0 && @Player2.life > 0)
      puts "--------- Next Question ----------"
      question = Math_Question.new
      if @current == @Player1
        if !question.ask_question(@current)
          @current.remove_life
          puts "P1: #{@Player1.life} left VS P2: #{@Player2.life} left"
        end
        @current = @Player2
      else
        if !question.ask_question(@current)
          @current.remove_life
          puts "P1: #{@Player1.life} left VS P2: #{@Player2.life} left"
        end
        @current = @Player1
      end
    end
    self.end_game(@current)
  end
end
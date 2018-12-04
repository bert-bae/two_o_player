require './player.rb'
require './math_questions.rb'
require './game_logic.rb'

Player1 = Players.new("Player 1")
Player2 = Players.new("Player 2")

Game1 = Game_Logic.new(Player1, Player2)
Game1.start_game
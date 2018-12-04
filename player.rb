# Player class will have the following:
# List of correct answers and question # (stretch)
# Current life (starting from 3)

class Players
  attr_accessor :name, :life
  def initialize(name)
    @name = name
    @life = 3
  end

  def total_score
    @life
  end

  def remove_life
    @life = life - 1
    game_over if life < 0
  end

  def game_over
    puts "Game over #{@name}."
end
# rand(1...21) => generate random number 1 - 20
# question generator
# correct answer
# prompt for answer (gets.chomp)
# response to the prompt (if...correct or incorrect)

class Math_Question
  attr_accessor :match
  def initialize
    @match = false
  end

  def ask_question(player)
    num1 = rand(1...21)
    num2 = rand(1...21)
    answer = num1 + num2
    puts "#{player.name}: What is #{num1} plus #{num2}?"
    player_answer = gets.chomp

    if answer == player_answer.to_i
      puts "Correct! Next question."
      match = true
    else
      puts "Nope! You lost one life."
      match = false
    end
    match
  end
end
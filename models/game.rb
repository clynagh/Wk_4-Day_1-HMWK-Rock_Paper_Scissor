class Game

  def initialize(hand1, hand2)
    @hand1 = hand1
    @hand2 = hand2
  end

  def run
    if @hand1 == @hand2
      return "It is a draw"
    elsif (@hand1 == "rock" && @hand2 == "scissor") || (@hand2 == "rock" && @hand1 == "scissor")
      return "Rock is the winner!"
    elsif (@hand1 == "paper" && @hand2 == "rock") || (@hand2 == "paper" && @hand1 == "rock")
      return "Paper wins it!"
    elsif (@hand1 == "scissor" && @hand2 == "paper") || (@hand2 == "scissor" && @hand1 == "paper")
      return "Scissor wins this one!"
    else
      return "It is rock, paper, scissor - try again!"
    end
  end



end
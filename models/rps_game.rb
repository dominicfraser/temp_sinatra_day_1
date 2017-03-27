class RPS 

  def initialize(player1, player2)
    @player1 = player1
    @player2 = player2
  end

  def play
    case @player1
      when "rock"
        case @player2
          when "rock" then "Draw"
          when "paper" then "Player 1 wins with #{@player1}"
          when "scissors" then "Player 2 wins with #{@player2}" 
        end
      when "paper"
        case @player2
          when "rock" then "Player 1 wins with #{@player1}"
          when "paper" then "Draw"
          when "scissors" then "Player 2 wins with #{@player2}"
        end
      when "scissors"
        case @player2
          when "rock" then "Player 2 wins with #{@player2}"
          when "paper" then "Player 1 wins with #{@player1}"
          when "scissors" then "Draw"
        end
    end
  end

end
class RPS 

  def initialize(player1, player2)
    @player1 = player1
    @player2 = player2
  end

  def play
    case player1
      when "rock"
        case player2
          when "rock" then "Draw"
          when "paper" then "Player 1 wins"
          when "scissors" then "Player 2 wins" 
        end
      when "paper"
        case player2
          when "rock" then "Player 1 wins"
          when "paper" then "Draw"
          when "scissors" then "Player 2 wins"
        end
      when "scissors"
        case player2
          when "rock" then "Player 2 wins"
          when "paper" then "Player 1 wins"
          when "scissors" then "Draw"
        end
    end
  end

end
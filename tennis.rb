def tennis_score(score)
  player1_points = score[0] 
  player2_points = score[1]
  points_diff = player1_points - player2_points 
  result = ""

  # check for all instances where player1 and player2 have the same score:
  if points_diff == 0 
    case 
      when player1_points >=3
        result = "Deuce"
      when player1_points == 0
        result = "Love-All"
      when player1_points == 1
        result = "Fifteen-All"
      when player1_points == 2
        result = "Thirty-All"
    end
    return result;
  end

  # check for all instances where either player1 or player2 has either won the game or has advantage:
  if player1_points >= 4 || player2_points >= 4
    case
    when points_diff == 1
      result = "Player1-Advantage"
    when points_diff == 2
      result = "Player1-Wins"
    when points_diff == -1
      result = "Player2-Advantage"
    when points_diff == -2
      result = "Player2-Wins"
    end
    return result
  end

  # now that the above has been checked, determine the first part of the result from player1's points
  case
    when player1_points == 0
      result = "Love-"
    when player1_points == 1
      result = "Fifteen-"
    when player1_points == 2
      result = "Thirty-"
    when player1_points == 3
      result = "Forty-"
  end

  # now that the above has been checked, determine the second part of the result from player2's points
  case
    when player2_points == 0
      result += "Love"
    when player2_points == 1
      result += "Fifteen"
    when player2_points == 2
      result += "Thirty"
    when player2_points == 3
      result += "Forty"
  end
  
  result
  
end

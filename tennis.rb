def tennis_score(score)
  result = ""
  score_diff = score[0] - score[1]

  # points are scored as 'Love', 'Fifteen', 'Thirty', 'Forty' and if both players have forty then the result is 'Deuce'
  
  # prepare first part of result taking into account 'Deuce' which should be returned straight away
  case
    when score[0] == 0
      result += "Love-"
    when score[0] == 1
      result += "Fifteen-"
    when score[0] == 2 && score_diff != -2
      result += "Thirty-"
    when score[0] == 3
      if score[1] == 3
        result += "Deuce"
        return result
      elsif score_diff != -1 && score_diff != -2
        result += "Forty-"
      end
  end

  # test for case were players have the same points (append 'All') not including 'Deuce' as that's automatically taken care of above
  if score_diff == 0 && score[1] < 3
    result += "All"
    return result
  elsif score_diff == 0 && score[1] >= 3
    result += "Deuce"
    return result
  end

  # prepare second part of result not including 'Deuce' and instances where the players have the same points ('All') as this is taken care of above
  case
    when score[1] == 0
      result += "Love"
      return result
    when score[1] == 1
      result += "Fifteen"
      return result
    when score[1] == 2 && !result.empty?
      result += "Thirty"
      return result
    when score[1] == 3 && !result.empty?
      result += "Forty"
      return result
  end

  case
    when score_diff == 1
      result += "Player1-Advantage"
    when score_diff == -1
      result += "Player2-Advantage"
    when score_diff == 2
      result += "Player1-Wins"
    when score_diff == -2
      result += "Player2-Wins"
  end

  result
end

def tennis_score(score)
  # ZERO = "Love"
  # FIFTEEN = "Fifteen"
  # # THIRTY = "Thirty"
  # # FORTY = "Forty"
  # player1 = ""
  # player2 = ""
  # case
  # when score[0] = 0
  #   player1 = ZERO
  # when score[0] = 1
  #   player1 = FIFTEEN
  # end

  # "#{player1}-#{player2}"


  case
  when score == [0, 0]
    "Love-All"
  when score == [1, 0]
    "Fifteen-Love"
  when score == [0, 1]
    "Love-Fifteen"
  when score == [1, 1]
    "Fifteen-All"
  when score == [2, 0]
    "Thirty-Love"
  when score == [0, 2]
    "Love-Thirty"
  when score == [2, 1]
    "Thirty-Fifteen" 
  when score == [1, 2]
    "Fifteen-Thirty"
  when score == [2, 2]
    "Thirty-All"
  when score == [3, 0]
    "Forty-Love"
  when score == [0, 3]
    "Love-Forty"
  when score == [3, 1]
    "Forty-Fifteen"
  when score == [1, 3]
    "Fifteen-Forty"
  when score == [3, 2]
    "Forty-Thirty"
  when score == [2, 3]
    "Thirty-Forty"
  when score == [3, 3]
    "Deuce"
  when score == [4, 3]
    "Advantage player1"
  when score == [3, 4]
    "Advantage player2"
  end
end

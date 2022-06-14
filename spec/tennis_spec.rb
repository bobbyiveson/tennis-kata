require './tennis'

describe 'tennis game' do
  it 'score [0, 0] is Love-All' do
    expect(tennis_score([0, 0])).to eq("Love-All")
  end

  it 'score [0, 1] is Love-Fifteen' do
    expect(tennis_score([0, 1])).to eq("Love-Fifteen")
  end
  
  it 'score [0, 2] is Love-Thirty' do
    expect(tennis_score([0, 2])).to eq("Love-Thirty")
  end
  
  it 'score [0, 3] is Love-Forty' do
    expect(tennis_score([0, 3])).to eq("Love-Forty")
  end
  
  it 'score [1, 0] is Fifteen-Love' do
    expect(tennis_score([1, 0])).to eq("Fifteen-Love")
  end

  it 'score [1, 1] is Fifteen-All' do
    expect(tennis_score([1, 1])).to eq("Fifteen-All")
  end

  it 'score [1, 2] is Fifteen-Thirty' do
    expect(tennis_score([1, 2])).to eq("Fifteen-Thirty")
  end

  it 'score [1, 3] is Fifteen-Forty' do
    expect(tennis_score([1, 3])).to eq("Fifteen-Forty")
  end

  it 'score [2, 0] is Thirty-Love' do
    expect(tennis_score([2, 0])).to eq("Thirty-Love")
  end

  it 'score [2, 1] is Thirty-Fifteen' do
    expect(tennis_score([2, 1])).to eq("Thirty-Fifteen")
  end

  it 'score [2, 2] is Thirty-All' do
    expect(tennis_score([2, 2])).to eq("Thirty-All")
  end

  it 'score [2, 3] is Thirty-Forty' do
    expect(tennis_score([2, 3])).to eq("Thirty-Forty")
  end
  
  it 'score [3, 0] is Forty-Love' do
    expect(tennis_score([3, 0])).to eq("Forty-Love")
  end

  it 'score [3, 1] is Forty-Fifteen' do
    expect(tennis_score([3, 1])).to eq("Forty-Fifteen")
  end

  it 'score [3, 2] is Forty-Thirty' do
    expect(tennis_score([3, 2])).to eq("Forty-Thirty")
  end

  describe 'Deuce' do
    it 'score [3, 3] is Deuce' do
      expect(tennis_score([3, 3])).to eq("Deuce")
    end

    it 'score [4, 4] is Deuce' do
      expect(tennis_score([4, 4])).to eq("Deuce")
    end
  end

  describe 'Advantage for' do
    it 'score [4, 3] is Player1-Advantage' do
      expect(tennis_score([4, 3])).to eq('Player1-Advantage')
    end

    it 'score [5, 4] is Player1-Advantage' do
      expect(tennis_score([5, 4])).to eq('Player1-Advantage')
    end

    it 'score [3, 4] is Player2-Advantage' do
      expect(tennis_score([3, 4])).to eq('Player2-Advantage')
    end

    it 'score [4, 5] is Player2-Advantage' do
      expect(tennis_score([4, 5])).to eq('Player2-Advantage')
    end
  end

  describe 'Player 1 wins' do
    it 'score [4, 2] is Player1-Wins' do 
      expect(tennis_score([4, 2])).to eq('Player1-Wins')
    end

    it 'score [5, 3] is Player1-Wins' do 
      expect(tennis_score([5, 3])).to eq('Player1-Wins')
    end
  end

  describe 'Player 2 wins' do
    it 'score [2, 4] is Player2-Wins' do
      expect(tennis_score([2, 4])).to eq('Player2-Wins')
    end

    it 'score [3, 5] is Player2-Wins' do
      expect(tennis_score([3, 5])).to eq('Player2-Wins')
    end
  end
end

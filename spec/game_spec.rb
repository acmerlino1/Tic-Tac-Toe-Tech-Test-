require 'game'

describe Game do
  
  describe '#current_turn' do
    it 'returns player 1 and current turn' do
      expect(subject.current_turn).to eq('Player 1')
    end
  end
end
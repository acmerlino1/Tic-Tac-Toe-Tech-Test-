require 'game'

describe Game do

  let(:board) { double :board }
  let(:move) { double :move }

  subject { described_class.new(board, move) }
  
  describe '#current_turn' do
    it 'returns player 1 for current turn at beginning of game' do
      expect(subject.current_turn).to eq('Player 1')
    end
  end

  describe '#change_turn' do
    it 'returns player 2 for current turn' do
      subject.change_turn
      expect(subject.current_turn).to eq('Player 2')
    end

    it 'returns player 1 for current turn after player 2s turn' do
      subject.change_turn
      subject.change_turn
      expect(subject.current_turn).to eq('Player 1')
    end
  end
  
end
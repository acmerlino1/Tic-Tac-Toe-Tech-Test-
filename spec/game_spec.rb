require 'game'

describe Game do

  let(:board) { double :board }
  let(:move) { double :move }

  subject { described_class.new(board, move) }

  before do
    allow(move).to receive(:get_row)
    allow(move).to receive(:get_column)
    allow(move).to receive(:move) { {row: 0, column: 0} }
    allow(board).to receive(:update_board).with(move.move, 'X') { [["X", "|", " ", "|", " "], ["----------"], [" ", "|", " ", "|", " "], ["----------"], [" ", "|", " ", "|", " "]] }

  end
  
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

  describe '#get_player_move' do
    it 'Get player 1 move' do
      expect(subject.get_player_move).to be_kind_of(Hash)
    end
  end

  describe '#change_symbol' do
    it 'changes symbol to X if player 1s turn' do
      subject.change_symbol
      expect(subject.symbol).to eq('X')
    end

    it 'changes symbol to O if player 2s turn' do
      subject.change_turn
      subject.change_symbol
      expect(subject.symbol).to eq('O')
    end
  end

  describe '#add_player_move' do
    it 'Uses the player move to update the board with X' do
      expect(subject.add_player_move).to eq([["X", "|", " ", "|", " "], ["----------"], [" ", "|", " ", "|", " "], ["----------"], [" ", "|", " ", "|", " "]])
    end
  end


  describe '#play_game' do
    it 'runs the game' do
      
    end
  end

  
end
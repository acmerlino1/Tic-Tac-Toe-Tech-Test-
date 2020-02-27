require 'board'

describe Board do

  describe '#print_board' do
    it 'prints the board' do
      expect(subject.print_board).to eq([[" ", "|", " ", "|", " "], ["----------"], [" ", "|", " ", "|", " "], ["----------"], [" ", "|", " ", "|", " "]])
    end
  end

  describe '#update_board' do
    it 'adds X in top left corner of board' do
      expect(subject.update_board({row: 0, column: 0})).to eq([["X", "|", " ", "|", " "], ["----------"], [" ", "|", " ", "|", " "], ["----------"], [" ", "|", " ", "|", " "]])
    end
  end

  
end

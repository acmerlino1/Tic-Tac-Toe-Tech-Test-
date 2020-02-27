require 'board'

describe Board do

  describe '#print_board' do
    it 'prints the board' do
      expect(subject.print_board).to eq([[" ", "|", " ", "|", " "], ["----------"], [" ", "|", " ", "|", " "], ["----------"], [" ", "|", " ", "|", " "]])
    end
  end

  describe '#update_board' do
    it 'adds X in top left corner of board' do
      expect(subject.update_board({row: 0, column: 0}, 'X')).to eq([["X", "|", " ", "|", " "], ["----------"], [" ", "|", " ", "|", " "], ["----------"], [" ", "|", " ", "|", " "]])
    end

    it 'adds X in middle of board' do
      expect(subject.update_board({row: 2, column: 2}, 'X')).to eq([[" ", "|", " ", "|", " "], ["----------"], [" ", "|", "X", "|", " "], ["----------"], [" ", "|", " ", "|", " "]])
    end

    it 'adds O in middle of board' do
      expect(subject.update_board({row: 2, column: 2}, 'O')).to eq([[" ", "|", " ", "|", " "], ["----------"], [" ", "|", "O", "|", " "], ["----------"], [" ", "|", " ", "|", " "]])
    end
  end
  
end

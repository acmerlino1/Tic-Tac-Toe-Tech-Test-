require 'game'

describe Game do

  describe '#print_board' do
    it 'prints the board' do
      expect(subject.print_board).to eq [[" ", "|", " ", "|", " "], ["----------"], [" ", "|", " ", "|", " "], ["----------"], [" ", "|", " ", "|", " "]]
    end
  end

  
end

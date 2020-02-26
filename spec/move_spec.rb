require 'move'

describe Move do
  
  describe '#player_move' do
    it 'Adds X on board when first player moves' do
      row = 'top'
      column = 'left'
      expect(subject.player_move(row, column)).to eq({row: 0, column: 0})
    end    
  end

end

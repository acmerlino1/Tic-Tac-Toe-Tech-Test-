require 'move'

describe Move do
  
  describe '#player_move' do
    it 'Returns a hash with player move as co-ordinates 0 and 0' do
      row = 'top'
      column = 'left'
      expect(subject.player_move(row, column)).to eq({row: 0, column: 0})
    end
    
    it 'Returns a hash with players moves as co-ordinates 0 and 2' do
      row = 'top'
      column = 'middle'
      expect(subject.player_move(row, column)).to eq({row: 0, column: 2})
    end 
    
    it 'Returns a hash with players moves as co-ordinates 0 and 4' do
      row = 'top'
      column = 'right'
      expect(subject.player_move(row, column)).to eq({row: 0, column: 4})
    end
  end

end

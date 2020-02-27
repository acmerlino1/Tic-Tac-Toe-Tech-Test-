require 'move'

describe Move do
  
  it 'Returns a hash with player move as co-ordinates 0 and 0' do
    user_row = 'top'
    user_column = 'left'
    subject.row(user_row)
    subject.column(user_column)
    expect(subject.move).to eq({row: 0, column: 0})
  end
    
    it 'Returns a hash with players moves as co-ordinates 0 and 2' do
      user_row = 'top'
      user_column = 'middle'
      subject.row(user_row)
      subject.column(user_column)
      expect(subject.move).to eq({row: 0, column: 2})
    end 
    
    it 'Returns a hash with players moves as co-ordinates 0 and 4' do
      user_row = 'top'
      user_column = 'right'
      subject.row(user_row)
      subject.column(user_column)
      expect(subject.move).to eq({row: 0, column: 4})
    end

    it 'Returns a hash with players moves as co-ordinates 2 and 0' do
      user_row = 'middle'
      user_column = 'left'
      subject.row(user_row)
      subject.column(user_column)
      expect(subject.move).to eq({row: 2, column: 0})
    end

    it 'Returns a hash with players moves as co-ordinates 4 and 0' do
      user_row = 'bottom'
      user_column = 'left'
      subject.row(user_row)
      subject.column(user_column)
      expect(subject.move).to eq({row: 4, column: 0})
    end

  describe '#row' do
    it 'player enters row as top, returns 0' do
      user_row = 'top'
      expect(subject.row(user_row)).to eq(0)
    end

    it 'player enters row as middle, returns 2' do
      user_row = 'middle'
      expect(subject.row(user_row)).to eq(2)
    end
    
    it 'player enters row as bottom, returns 4' do
      user_row = 'bottom'
      expect(subject.row(user_row)).to eq(4)
    end

    it 'raises error if input not valid' do
      user_row = 'last line'
      expect { subject.row(user_row) }.to raise_error 'Invalid choice'
    end
  end

  describe '#column' do
    it 'player enters left column, returns 0' do
      user_column = 'left'
      expect(subject.column(user_column)).to eq(0)
    end

    it 'player enters middle column, returns 2' do
      user_column = 'middle'
      expect(subject.column(user_column)).to eq(2)
    end

    it 'player enters right column, returns 4' do
      user_column = 'right'
      expect(subject.column(user_column)).to eq(4)
    end
  end

end

require 'game'

describe Game do

  it 'Shows the game field to players' do
    expect(subject.board).to eq [[" ", "|", " ", "|", " "], ["----------"], [" ", "|", " ", "|", " "], ["----------"], [" ", "|", " ", "|", " "]]
  end
  
end

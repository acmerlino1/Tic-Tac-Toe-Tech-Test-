class Game

  attr_reader :current_turn

  def initialize
    @current_turn = 'Player 1'
  end

  def change_turn
    @current_turn =='Player 1' ? @current_turn = 'Player 2' : @current_turn = 'Player 1'
  end
end
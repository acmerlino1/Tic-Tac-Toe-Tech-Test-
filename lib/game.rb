require_relative 'board'
require_relative 'move'

class Game

  attr_reader :current_turn

  def initialize(board = Board.new, move = Move.new)
    @board = board
    @move = move
    @current_turn = 'Player 1'
  end

  def change_turn
    @current_turn == 'Player 1' ? @current_turn = 'Player 2' : @current_turn = 'Player 1'
  end

  def get_player_move
    @move.get_row
    @move.get_column
    @move.move
  end

  def add_player_move
    @board.update_board(@move.move, 'X')
  end


end
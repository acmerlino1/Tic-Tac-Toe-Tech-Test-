require_relative 'board'
require_relative 'move'

class Game

  attr_reader :current_turn, :symbol

  def initialize(board = Board.new, move = Move.new)
    @board = board
    @move = move
    @current_turn = 'Player 1'
    @symbol = 'X'
  end

  def change_turn
    @current_turn == 'Player 1' ? @current_turn = 'Player 2' : @current_turn = 'Player 1'
    change_symbol
  end

  def get_player_move
    @move.get_row
    @move.get_column
    @move.move
  end

  def change_symbol
    @current_turn == 'Player 1' ? @symbol = 'X' : @symbol = 'O'
  end

  def add_player_move
    @board.update_board(@move.move, @symbol)
  end

  def play_game
    while true do
      @board.print_board
      puts "#{@current_turn}'s turn"
      get_player_move
      add_player_move
      change_turn
    end
  end


end
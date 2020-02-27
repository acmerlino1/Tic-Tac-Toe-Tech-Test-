class Board

  attr_reader :board

  def initialize
    @board = [
      [" ", "|", " ", "|", " "],
      ["----------"],
      [" ", "|", " ", "|", " "],
      ["----------"],
      [" ", "|", " ", "|", " "]
    ]
  end

  def print_board
    @board.each { |row| puts row.join(" ") }
  end

  def update_board(player_move, player_symbol)
    @board[player_move[:row]][player_move[:column]] = player_symbol
    @board
  end

  def check_position
    true
  end

end

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

  def update_board(player_move)
    @board[player_move[:row]][player_move[:column]] = 'X'
    @board
  end

end

class GameBoard

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

end

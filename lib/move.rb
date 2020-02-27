class Move

  attr_reader :move

  def initialize
    @move = {row: @row, column: @column}
  end

  def get_row
    puts 'Enter row (top, middle or bottom):'
    row
  end

  def get_column
    puts 'Enter column (left, middle or right):'
    column
  end

  def row(user_row = gets.chomp)
    rows = {'top' => 0, 'middle' => 2, 'bottom' => 4}
    @move[:row] = rows[user_row]
  end

  def column(user_column = gets.chomp)
    columns = {'left' => 0, 'middle' => 2, 'right' => 4}
    @move[:column] = columns[user_column]
  end

end

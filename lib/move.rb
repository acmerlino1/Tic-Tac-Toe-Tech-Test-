class Move

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
    rows[user_row]
  end

  def column(user_column = gets.chomp)
    columns = {'left' => 0, 'middle' => 2, 'right' => 4}
    columns[user_column]
  end

  def player_move(row, column)
    coordinates = {row: row, column: column}
  end

end

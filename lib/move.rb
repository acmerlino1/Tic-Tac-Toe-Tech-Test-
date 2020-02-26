class Move

  def get_row(user_input = gets.chomp)
    puts 'Enter row (top, middle or bottom):'
    rows = {'top' => 0, 'middle' => 2, 'bottom' => 4}
    rows[user_input]
  end

  def get_column(user_input = gets.chomp)
    puts 'Enter row (left, middle or right):'
    columns = {'left' => 0, 'middle' => 2, 'right' => 4}
    columns[user_input]
  end

  def player_move(row, column)
    
    if column == 'left' 
      if row == 'top'
        {row: 0, column: 0}
      elsif row == 'bottom'
        {row: 4, column: 0}
      else
        {row: 2, column: 0}
      end
    elsif column == 'right'
      {row: 0, column: 4}
    else
      {row: 0, column: 2}
    end
  end

end

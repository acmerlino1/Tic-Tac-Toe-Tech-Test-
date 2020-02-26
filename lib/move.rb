class Move

  def get_row(user_input = gets.chomp)
    puts 'Enter row (top, middle or bottom):'
    row = user_input
    if row == 'top'
      0
    elsif row == 'middle'
      2
    else
      4
    end
  end

  def get_column(user_input = gets.chomp)
    if user_input == 'left'
      0
    elsif user_input == 'middle'
      2
    end
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

class Move

  def player_move(row, column)
    if column == 'left' 
      if row == 'top'
        {row: 0, column: 0}
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
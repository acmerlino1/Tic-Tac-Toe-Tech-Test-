class Move

  def player_move(row, column)
    if column == 'left'
      {row: 0, column: 0}
    elsif column == 'right'
      {row: 0, column: 4}
    else
      {row: 0, column: 2}
    end
  end
end
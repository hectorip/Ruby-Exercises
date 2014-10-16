
class Board
  def initialize()
    @board = Array.new(256,Array.new(256,0))
  end

  def print_board()
    print @board.to_s
  end

  def SetCol(n,v)
    @board.each do |row|
      row[n] = v
    end
  end

  def SetRow(n,v)
    @board[n] = Array.new(256,v)
  end

  def QueryCol(n)
    res = 0
    @board.each do |row|
      res += row[n]
    end
  end

end

b = Board.new
b.SetRow(255, 1)
puts b.QueryCol 0

# //values = Array.new()


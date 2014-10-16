
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
    puts res
  end
  def QueryRow(n)
    res = 0
    @board[n].each do |val|
      res +=val
    end
    puts res
  end

end
board = Board.new
File.open(ARGV[0]).each_line do |line|
  line.strip!
  if line != ''
    v = nil
    command, n, v = line.split(' ')
    if !v.nil?
      board.send(command,n.to_i,v.to_i)
    else
      board.send(command,n.to_i)
    end
  end
end
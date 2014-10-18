class Stack
  def initialize
    @dataEven = []
    @dataOdd = []
    @count = 0
    @even = 1
  end

  def push(i)
    if @even > 0
      @dataEven.push i
      # puts "data:" + @dataEven.to_s
    else
      @dataOdd.push i
      # puts "dataOdd:" + @dataOdd.to_s
    end
    @even *= -1
  end

  def pop()
    if @even > 0
      puts @dataOdd.reverse.join(" ")
    else
      puts @dataEven.reverse.join(" ")
    end
  end
end
File.open(ARGV[0]).each_line do |line|
  line.strip!
  s = Stack.new
  if line != ''

    line.split(" ").each do |i|
      s.push i.to_i
    end
    s.pop
  end
end
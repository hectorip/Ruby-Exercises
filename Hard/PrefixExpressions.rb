class Node
  attr_accessor :parent
  attr_accessor :count
  def initialize(symbol)
    @symbol = symbol
    @childs = []
    @count = 0
  end

  def setChild(value)
    @childs.push value
    value.parent = self
    @count += 1
  end


  def calculate()
    if(@count == 0)
      return @symbol.to_i
    else
      case @symbol
        when "+"
          return @childs[0].calculate + @childs[1].calculate
        when "-"
          return @childs[0].calculate - @childs[1].calculate

        when "*"
          return @childs[0].calculate * @childs[1].calculate
        when "/"
          return @childs[0].calculate.to_f / @childs[1].calculate
      end
    end
  end
end

class PrefixEvaluator

  def initialize(expression)
    @root = Node.new(expression.shift)
    currentNode = @root
    expression.each do |element|
      while currentNode.count == 2
          currentNode = currentNode.parent
      end
      newNode = Node.new(element)
      currentNode.setChild(newNode)
      unless element =~ /[[:digit:]]/
        currentNode = newNode
      end
    end
  end

  def evaluate()
    @root.calculate
  end

end

File.open(ARGV[0]).each_line do |line|
  line.strip!
  if line != ''
    expression = line.split(" ")
    p = PrefixEvaluator.new(expression)
    puts p.evaluate.to_i
  end

end
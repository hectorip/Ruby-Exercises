child = [20,[10],[29]]
ant = [8,[3],child]
tree = [30,ant,[52]]

def search(tree, value)
  path = []
  tree.each do |node|
    if node[0] == value
      return [value]
    elsif node[0] > value
      path += search(tree,value)
    end
  end
end
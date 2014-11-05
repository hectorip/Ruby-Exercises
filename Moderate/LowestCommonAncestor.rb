child = [20,[10],[29]]
ant = [8,[3],child]
tree = [30,ant,[52]]

def search(tree, value)
  path = []
    if tree[0] == value
      return [value]
    elsif tree[0] > value and !tree[1].nil?
        child = search(tree[1],value)
      if child.nil?
        return nil
      else
        path += child + [tree[0]]
      end
    elsif tree[0] < value and !tree[2].nil?
        child = search(tree[2],value)
      if child.nil?
        return nil
      else
        path += child + [tree[0]]
      end
    else
      return nil
    end
  return path
end

File.open(ARGV[0]).each_line do |line|
  line.strip!
  if line != ''

    val1, val2 = line.split(' ').map { |el| el.to_i}
    path1 = search(tree,val1)
    path2 = search(tree,val2)
    if(path1.nil? or path2.nil?)
      puts "0"
    elsif(!path1.nil? and !path2.nil?)
      path1.each do |element|
        if path2.include? element
          puts element
          break
        end
      end

    end
  end
end

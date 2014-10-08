File.open(ARGV[0]).each_line do |line|
  elements = line.split(',')
  unique = []
  if elements.length > 0
    elements.each_with_index do |element,index|
      element = element.to_i
      unless unique[element] == 1
        unique[element] = 1
        print "," if index != 0
        print element
      end
    end
  end
  print "\n"
end
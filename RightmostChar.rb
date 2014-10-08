File.open(ARGV[0]).each_line do |line|
  elements = line.strip.split(',')
  if elements.length > 0
    found = false
    elements[0].reverse.each_char.with_index do |c,index|
      if c == elements[1]
        puts elements[0].length - 1 - index
        found = true
        break
      end
    end
    puts "-1" if !found
  end
end
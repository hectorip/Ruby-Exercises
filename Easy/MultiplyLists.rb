File.open(ARGV[0]).each_line do |line|
  line.strip!
  if line != ''
    first,second = line.split('|').map { |list| list.strip.split(' ').map { |element| element.to_i}}
    first.each_with_index { |el,index| second[index] *= el }
    puts second.join(' ')
  end
end
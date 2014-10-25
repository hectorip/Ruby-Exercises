File.open(ARGV[0]).each_line do |line|
  line.strip!
  if line != ''

    list, swaps = line.split(':')
    list = list.strip.split(' ')
    swaps = swaps.split(',').map { |swap| swap.strip.split('-').map { |n| n.to_i }}

    swaps.each do |swap|
      temp = list[swap[0]]
      list[swap[0]] = list[swap[1]]
      list[swap[1]] = temp
    end

    puts list.join(' ')
  end
end